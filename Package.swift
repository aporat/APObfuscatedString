// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "APObfuscatedString",
    platforms: [
        .iOS(.v16),
        .tvOS(.v13),
        .macOS(.v12)
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
    ]
)
