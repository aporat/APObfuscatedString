// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "APObfuscatedString",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
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
            path: "Sources"
        ),
        .testTarget(
            name: "APObfuscatedStringTests",
            dependencies: ["APObfuscatedString"],
            path: "Tests"
        )
    ]
)
