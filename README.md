# APObfuscatedString

A modern, concurrency-safe Swift package that extends `String` with fluent, chainable properties to append characters. Designed for Swift 6, this library simplifies string construction in a readable and expressive way, making it useful for tasks like building identifiers or API endpoints.

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Faporat%2FAPObfuscatedString%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/aporat/APObfuscatedString)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Faporat%2FAPObfuscatedString%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/aporat/APObfuscatedString)
![GitHub Actions Workflow Status](https://github.com/aporat/APObfuscatedString/actions/workflows/ci.yml/badge.svg)
[![codecov](https://codecov.io/github/aporat/APObfuscatedString/graph/badge.svg?token=OHF9AE0KMC)](https://codecov.io/github/aporat/APObfuscatedString)

## Features
- **Fluent `String` Extensions**: Easily append characters to `String` to create new strings in a chainable sequence.
- **Concurrency-Safe**: Fully `Sendable` and safe for use in concurrent environments, built to work with Swift 6's strict data-race safety checks.
- **Comprehensive Coverage**: Includes all 26 lowercase letters, 26 uppercase letters, 10 digits, and 33+ special characters.
- **Special Characters**: Support for common special characters including space, punctuation, operators, brackets, and more.
- **Swift Package Manager**: Easy integration into your Swift projects.

## Requirements
- Swift 6.0 or later
- iOS 17.0+, macOS 13.0+, tvOS 13.0+, watchOS 6.0+

## Installation

### Swift Package Manager
Add `APObfuscatedString` to your project via Swift Package Manager:

1. In Xcode, go to `File > Add Package Dependency`.
2. Enter the repository URL:
   ```
   https://github.com/aporat/APObfuscatedString.git
   ```
3. Select the version and add it to your target.

Or add it to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/aporat/APObfuscatedString.git", from: "1.0.0")
]
```

## Usage

### Fluent character chaining

Build a string one character at a time so the plaintext never appears as a
single contiguous literal in your source or a naive `strings` scan of the binary:

```swift
import APObfuscatedString

let host = ""._a._p._i._dot._e._x._a._m._p._l._e._dot._c._o._m   // "api.example.com"
```

### Generating a chain

Instead of hand-writing the chain, generate it from the plaintext (for example
in a test or a REPL) and paste the result into your source:

```swift
"hi".obfuscatedChainSource                 // Optional("\"\"._h._i")
"a.b".obfuscatedChainSource                // Optional("\"\"._a._dot._b")
"hi🚀".obfuscatedChainSource               // nil (emoji has no property)
"hi🚀".unsupportedObfuscationCharacters    // ["🚀"]
```

### Stronger obfuscation (keystream)

The fluent API still leaves every individual character in the binary. For a
value whose plaintext bytes never appear at all, use `APObfuscatedBlob`. It
derives a keystream from a small seed, so you store only the seed and the
obfuscated bytes:

```swift
// Generate once and paste the literals into your source:
let generated = APObfuscatedBlob("sk_live_secret", seed: 0xC0FFEE)
print(generated.seed, generated.bytes)

// At the call site:
let apiKey = APObfuscatedBlob(seed: 12648430, bytes: [/* … */]).value
```

For an externally-managed key, use the repeating-key helpers:

```swift
let key: [UInt8] = [0x2A, 0x7F, 0x10, 0x5C]
let hidden = APStringObfuscation.obfuscate("secret", key: key)
let secret = APStringObfuscation.deobfuscate(hidden, key: key)   // "secret"
```

## Security note

This library provides **obfuscation, not encryption**. It raises the effort
needed to extract a value by hand or with a naive `strings` scan, but anyone who
can run your binary under a debugger can recover the value. Do not rely on it as
your only protection for high-value secrets. Prefer the Keychain, a server-side
round trip, or a dedicated secrets manager for anything sensitive.

## License

See [LICENSE](LICENSE).
