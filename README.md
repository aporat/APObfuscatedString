# APObfuscatedString

A modern, concurrency-safe Swift package that extends `String` with fluent, chainable properties to append characters. Designed for Swift 6, this library simplifies string construction in a readable and expressive way, making it useful for tasks like building identifiers or API endpoints.

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Faporat%2FAPObfuscatedString%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/aporat/APObfuscatedString)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Faporat%2FAPObfuscatedString%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/aporat/APObfuscatedString)
![GitHub Actions Workflow Status](https://github.com/aporat/APObfuscatedString/actions/workflows/ci.yml/badge.svg)
[![codecov](https://codecov.io/github/aporat/APObfuscatedString/graph/badge.svg?token=OHF9AE0KMC)](https://codecov.io/github/aporat/APObfuscatedString)

## Features
- **Fluent `String` Extensions**: Easily append characters to `String` to create new strings in a chainable sequence.
- **Concurrency-Safe**: Fully `Sendable` and safe for use in concurrent environments, built to work with Swift 6's strict data-race safety checks.
- **Comprehensive Coverage**: Includes all 26 lowercase letters, 26 uppercase letters, and 10 digits.
- **Swift Package Manager**: Easy integration into your Swift projects.

## Requirements
- Swift 6.0 or later
- iOS 17.0+, macOS 13.0+, tvOS 13.0+, watchOS 6.0+

## Installation

### Swift Package Manager
Add `APObfuscatedString` to your project via Swift Package Manager:

1. In Xcode, go to `File > Add Package Dependency`.
2. Enter the repository URL:
