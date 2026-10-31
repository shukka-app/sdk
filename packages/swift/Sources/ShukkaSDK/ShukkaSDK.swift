import Foundation
import HTTPTypes
import OpenAPIRuntime
import OpenAPIURLSession

/// Adds `Authorization: Bearer <apiKey>` to every request.
struct BearerAuthMiddleware: ClientMiddleware {
    let apiKey: String

    func intercept(
        _ request: HTTPRequest,
        body: HTTPBody?,
        baseURL: URL,
        operationID: String,
        next: (HTTPRequest, HTTPBody?, URL) async throws -> (HTTPResponse, HTTPBody?)
    ) async throws -> (HTTPResponse, HTTPBody?) {
        var request = request
        request.headerFields.append(.init(name: .authorization, value: "Bearer \(apiKey)"))
        return try await next(request, body, baseURL)
    }
}

/// Entry point for the generated client.
///
/// `Types.swift` and `Client.swift` are produced at build time from
/// `openapi.json` by the swift-openapi-generator plugin. Do not edit them —
/// change the contract instead.
///
/// ```swift
/// let shukka = Shukka(baseURL: URL(string: "https://updates.example.com")!, apiKey: "shk_…")
/// let response = try await shukka.client.getApp(path: .init(appSlug: "demo"))
/// ```
public struct Shukka: Sendable {
    public let client: Client

    /// - Parameter apiKey: App-scoped key (`shk_…`). Omit for the public feed
    ///   and notes operations.
    public init(baseURL: URL, apiKey: String? = nil) {
        let middlewares: [any ClientMiddleware] = apiKey.map { [BearerAuthMiddleware(apiKey: $0)] } ?? []
        self.client = Client(
            serverURL: baseURL,
            transport: URLSessionTransport(),
            middlewares: middlewares
        )
    }
}
