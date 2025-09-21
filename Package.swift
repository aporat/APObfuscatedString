// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "APObfuscatedString",
    platforms: [
        .macOS(.v13),
        .iOS(.v17),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "APObfuscatedString",
            targets: ["APObfuscatedString"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "APObfuscatedString"
        ),
        .testTarget(
            name: "APObfuscatedStringTests",
            dependencies: ["APObfuscatedString"]
        )
    ],
    swiftLanguageModes: [.v6]
)
