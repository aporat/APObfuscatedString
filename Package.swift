// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "APObfuscatedString",
    platforms: [
        .macOS(.v13),
        .iOS(.v15),
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
    swiftLanguageVersions: [.v5]
)
