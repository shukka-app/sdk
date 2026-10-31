// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ShukkaSDK",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "ShukkaSDK", targets: ["ShukkaSDK"]),
    ],
    dependencies: [
        // swift-collections 1.7.x fails to compile against the Swift 6.4 toolchain
        // shipped with Xcode 27 (`Iterable` / `Span` mismatch). Pin a known-good range.
        .package(url: "https://github.com/apple/swift-collections", "1.3.0"..<"1.7.0"),
        .package(url: "https://github.com/apple/swift-http-types", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-generator", from: "1.10.0"),
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.8.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.1.0"),
    ],
    targets: [
        .target(
            name: "ShukkaSDK",
            dependencies: [
                .product(name: "HTTPTypes", package: "swift-http-types"),
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            plugins: [
                .plugin(name: "OpenAPIGenerator", package: "swift-openapi-generator"),
            ]
        ),
        .testTarget(
            name: "ShukkaSDKContractTests",
            dependencies: ["ShukkaSDK"]
        ),
    ]
)
