// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
            name: "APObfuscatedString",
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "APObfuscatedStringTests",
            dependencies: ["APObfuscatedString"],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
