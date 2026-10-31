# ShukkaSDK

Swift client for the [Shukka](https://github.com/shukka-app/shukka) release API.

```swift
.package(url: "https://github.com/shukka-app/sdk.git", from: "0.1.0")
```

```swift
import ShukkaSDK

let shukka = Shukka(baseURL: URL(string: "https://updates.example.com")!, apiKey: "shk_…")

let output = try await shukka.client.getApp(path: .init(appSlug: "demo"))
switch output {
case .ok(let response):
    print(try response.body.json.app.name)
default:
    break
}

// Public feed and notes need no key.
let public = Shukka(baseURL: URL(string: "https://updates.example.com")!)
let notes = try await public.client.listPublicNotes(path: .init(appSlug: "demo", channel: "stable"))
```

`Types*.swift` and `Client.swift` are produced by the
[swift-openapi-generator](https://github.com/apple/swift-openapi-generator) plugin at build
time from `Sources/ShukkaSDK/openapi.json`. Do not edit them.

The document is the 3.0.3 snapshot: the generator accepts 3.1 but drops `type: "null"`
branches, which would hide every nullable field from the generated types.
