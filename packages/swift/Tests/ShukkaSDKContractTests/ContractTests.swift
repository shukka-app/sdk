import Foundation
import XCTest

@testable import ShukkaSDK

/// Contract test for the generated Swift client.
///
/// Run through `scripts/test-contract.mjs`, which sets the `SHUKKA_CONTRACT_*`
/// variables. Without them the test skips, so plain `swift test` stays green.
final class ContractTests: XCTestCase {
    private func required(_ name: String) throws -> String {
        guard let value = ProcessInfo.processInfo.environment[name], !value.isEmpty else {
            throw XCTSkip("\(name) is not set")
        }
        return value
    }

    func testReadSurface() async throws {
        let baseURL = try required("SHUKKA_CONTRACT_URL")
        let appSlug = try required("SHUKKA_CONTRACT_APP")
        let channel = try required("SHUKKA_CONTRACT_CHANNEL")
        let version = try required("SHUKKA_CONTRACT_VERSION")
        let apiKey = try required("SHUKKA_CONTRACT_KEY")
        let note = try required("SHUKKA_CONTRACT_NOTE")

        let shukka = Shukka(baseURL: try XCTUnwrap(URL(string: baseURL)), apiKey: apiKey)

        let appOutput = try await shukka.client.getApp(path: .init(appSlug: appSlug))
        guard case .ok(let appOk) = appOutput, case .json(let detail) = appOk.body else {
            return XCTFail("getApp returned \(appOutput)")
        }
        XCTAssertEqual(detail.app.slug, appSlug)
        XCTAssertEqual(detail.app.updaterKind, .tauri)
        XCTAssertNotNil(detail.app.s3Endpoint, "s3Endpoint should be present")
        print("swift getApp ok: \(detail.app.slug) (\(detail.app.updaterKind))")

        let channelsOutput = try await shukka.client.listChannels(path: .init(appSlug: appSlug))
        guard case .ok(let channelsOk) = channelsOutput, case .json(let list) = channelsOk.body else {
            return XCTFail("listChannels returned \(channelsOutput)")
        }
        let entry = try XCTUnwrap(list.channels.first { $0.name == channel })
        XCTAssertNotNil(entry.currentVersionId, "channel has no current version")
        print("swift listChannels ok: \(list.channels.map(\.name).joined(separator: ", "))")

        let notesOutput = try await shukka.client.listPublicNotes(path: .init(appSlug: appSlug, channel: channel))
        guard case .ok(let notesOk) = notesOutput, case .json(let notes) = notesOk.body else {
            return XCTFail("listPublicNotes returned \(notesOutput)")
        }
        let publicNote = try XCTUnwrap(notes.notes.first { $0.version == version })
        XCTAssertTrue(publicNote.markdown.contains(note), "note markdown does not match")
        XCTAssertEqual(publicNote.locale, "en")
        print("swift listPublicNotes ok: \(publicNote.version) (\(publicNote.locale))")

        let feedOutput = try await shukka.client.getChannelFeed(path: .init(appSlug: appSlug, channel: channel))
        guard case .ok(let feedOk) = feedOutput, case .json(let feed) = feedOk.body else {
            return XCTFail("getChannelFeed returned \(feedOutput)")
        }
        XCTAssertEqual(feed.version, version)
        XCTAssertFalse(feed.platforms.additionalProperties.isEmpty, "feed has no platforms")
        print("swift getChannelFeed ok: \(feed.version)")

        let fileOutput = try await shukka.client.getFeedFile(
            path: .init(appSlug: appSlug, channel: channel, filename: "latest.json")
        )
        guard case .ok(let fileOk) = fileOutput, case .json(let file) = fileOk.body else {
            return XCTFail("getFeedFile returned \(fileOutput)")
        }
        XCTAssertEqual(file.version, version)
        print("swift getFeedFile ok: latest.json")
    }
}
