# APObfuscatedString

A Swift package that extends `String` and `NSMutableString` with fluent, chainable properties to append lowercase letters (a-z), uppercase letters (A-Z), and numbers (0-9). This library simplifies string construction in a readable, expressive way, useful for tasks like obfuscation, shorthand notation, or dynamic string generation.

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Faporat%2FAPObfuscatedString%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/aporat/APObfuscatedString)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Faporat%2FAPObfuscatedString%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/aporat/APObfuscatedString)
![GitHub Actions Workflow Status](https://github.com/aporat/APObfuscatedString/actions/workflows/ci.yml/badge.svg)
[![codecov](https://codecov.io/github/aporat/APObfuscatedString/graph/badge.svg?token=OHF9AE0KMC)](https://codecov.io/github/aporat/APObfuscatedString)

## Features
- **Immutable String Support**: Append characters to `String` and get a new string back.
- **Mutable String Support**: Append characters to `NSMutableString` in place, with chainable methods.
- **Comprehensive Coverage**: Includes all 26 lowercase letters, 26 uppercase letters, and 10 digits.
- **Swift Package Manager**: Easy integration into your Swift projects.

## Requirements
- Swift 5.9 or later
- iOS 16.0+, tvOS 13.0+, macOS 12.0+

## Installation

### Swift Package Manager
Add `APObfuscatedString` to your project via Swift Package Manager:

1. In Xcode, go to `File > Add Package Dependency`.
2. Enter the repository URL:
   ```
   https://github.com/aporat/APObfuscatedString.git
   ```
3. Specify the version or branch (e.g., `main`) and add it to your target.

Or, manually add it to your `Package.swift`:
```swift
dependencies: [
    .package(url: "https://github.com/aporat/APObfuscatedString.git", from: "1.0.0")
]
```
Then include it in your target:
```swift
.target(name: "YourTarget", dependencies: ["APObfuscatedString"])
```

## Usage

### String (Immutable)
Append characters to a `String` to create a new string:
```swift
import APObfuscatedString

let base = "hello"
let result = base._h._e._l._l._o // "hellohello"
print(result)

let mixed = "start"._a._B._1 // "startaB1"
print(mixed)
```

### NSMutableString (Mutable)
Append characters to an `NSMutableString` in place:
```swift
import APObfuscatedString

let mutable = NSMutableString(string: "hello")
mutable._w._o._r._l._d // Modifies mutable to "helloworld"
print(mutable) // "helloworld"

let chained = mutable._1._2._3 // Modifies mutable to "helloworld123"
print(chained) // "helloworld123"
```

## Examples
- **Obfuscation**: Build hard-to-read strings dynamically:
  ```swift
  let obfuscated = ""._x._Y._z._9 // "xYz9"
  ```
- **Shorthand**: Quickly append identifiers:
  ```swift
  let id = "user"._1._2._3 // "user123"
  ```

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
