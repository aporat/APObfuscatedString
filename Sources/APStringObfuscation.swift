import Foundation

// MARK: - APStringObfuscation

/// Runtime string obfuscation utilities.
///
/// The fluent `String` extensions (`""._h._i`) hide a secret from a naive
/// `strings` scan by never storing it as one contiguous literal. Each individual
/// character, however, still exists in the binary, and the plaintext is visible
/// in your *source code*.
///
/// `APStringObfuscation` is a stronger option: the plaintext bytes never appear
/// in the binary at all. A value is stored XOR'd against a keystream, and the
/// original is only reconstructed at runtime. This is lightweight obfuscation to
/// deter casual inspection, **not** encryption. Anyone who can run your binary
/// under a debugger can recover the value, so never treat it as a substitute for
/// a real secrets-management solution (Keychain, a server round-trip, etc.).
public enum APStringObfuscation {

    // MARK: Repeating-key XOR

    /// Obfuscates a string by XOR-ing its UTF-8 bytes against a repeating key.
    ///
    /// - Parameters:
    ///   - string: The plaintext to obfuscate.
    ///   - key: The key bytes. Must not be empty.
    /// - Returns: The obfuscated bytes. Feed them back through
    ///   ``deobfuscate(_:key:)`` with the same key to recover the string.
    public static func obfuscate(_ string: String, key: [UInt8]) -> [UInt8] {
        precondition(!key.isEmpty, "key must not be empty")
        return Array(string.utf8).enumerated().map { index, byte in
            byte ^ key[index % key.count]
        }
    }

    /// Reverses ``obfuscate(_:key:)``.
    ///
    /// - Parameters:
    ///   - bytes: Bytes produced by ``obfuscate(_:key:)``.
    ///   - key: The same key used to obfuscate. Must not be empty.
    /// - Returns: The original string, or `nil` if the bytes/key do not
    ///   decode to valid UTF-8.
    public static func deobfuscate(_ bytes: [UInt8], key: [UInt8]) -> String? {
        precondition(!key.isEmpty, "key must not be empty")
        let decoded = bytes.enumerated().map { index, byte in
            byte ^ key[index % key.count]
        }
        return String(bytes: decoded, encoding: .utf8)
    }
}

// MARK: - APObfuscatedBlob

/// A self-contained obfuscated string.
///
/// Unlike the repeating-key helpers, a blob carries a small `seed` and derives
/// its keystream from it, so you do not have to store or manage a separate key.
/// The seed plus a deterministic pseudo-random generator regenerates the exact
/// keystream on demand, which means neither the plaintext nor a static key is
/// ever present in the binary.
///
/// ```swift
/// // Generate once (e.g. in a script or a test) and paste the literals:
/// let blob = APObfuscatedBlob("sk_live_123", seed: 0xC0FFEE)
/// // APObfuscatedBlob(seed: 12648430, bytes: [ ... ])
///
/// // Then at the call site:
/// let apiKey = APObfuscatedBlob(seed: 12648430, bytes: [ ... ]).value
/// ```
///
/// This is obfuscation, not encryption. See ``APStringObfuscation`` for the
/// security caveats.
public struct APObfuscatedBlob: Sendable, Equatable, Hashable {

    /// The seed used to derive the keystream. Never zero.
    public let seed: UInt32

    /// The obfuscated UTF-8 bytes.
    public let bytes: [UInt8]

    /// Stores an already-obfuscated blob (the form you paste into source).
    public init(seed: UInt32, bytes: [UInt8]) {
        self.seed = seed == 0 ? 1 : seed
        self.bytes = bytes
    }

    /// Obfuscates `plaintext` with a keystream derived from `seed`.
    ///
    /// - Parameters:
    ///   - plaintext: The string to obfuscate.
    ///   - seed: The keystream seed. Defaults to a fresh random value. A zero
    ///     seed is coerced to `1` because the generator requires a nonzero state.
    public init(_ plaintext: String, seed: UInt32 = .random(in: 1...UInt32.max)) {
        let effectiveSeed = seed == 0 ? 1 : seed
        self.seed = effectiveSeed
        var generator = XorShift32(state: effectiveSeed)
        self.bytes = Array(plaintext.utf8).map { $0 ^ generator.nextByte() }
    }

    /// The reconstructed plaintext, or `nil` if the bytes do not decode to
    /// valid UTF-8 (for example if the seed is wrong).
    public var value: String? {
        var generator = XorShift32(state: seed)
        let decoded = bytes.map { $0 ^ generator.nextByte() }
        return String(bytes: decoded, encoding: .utf8)
    }
}

// MARK: - XorShift32

/// A tiny deterministic pseudo-random byte generator (xorshift32).
///
/// Deterministic and dependency-free so the same seed always yields the same
/// keystream across platforms. Not cryptographically secure — it exists only to
/// spread a seed into a keystream for obfuscation.
struct XorShift32 {
    private var state: UInt32

    init(state: UInt32) {
        // xorshift requires a nonzero state.
        self.state = state == 0 ? 1 : state
    }

    mutating func nextByte() -> UInt8 {
        var x = state
        x ^= x << 13
        x ^= x >> 17
        x ^= x << 5
        state = x
        return UInt8(truncatingIfNeeded: x)
    }
}
