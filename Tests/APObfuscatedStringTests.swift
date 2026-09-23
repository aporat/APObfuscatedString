import XCTest
@testable import APObfuscatedString

final class APObfuscatedStringTests: XCTestCase {

    func testStringAppendingCharacters() {
        let base = "test"
        let testCases: [Character: (String) -> String] = [
            // Lowercase
            "a": { $0._a }, "b": { $0._b }, "c": { $0._c }, "d": { $0._d },
            "e": { $0._e }, "f": { $0._f }, "g": { $0._g }, "h": { $0._h },
            "i": { $0._i }, "j": { $0._j }, "k": { $0._k }, "l": { $0._l },
            "m": { $0._m }, "n": { $0._n }, "o": { $0._o }, "p": { $0._p },
            "q": { $0._q }, "r": { $0._r }, "s": { $0._s }, "t": { $0._t },
            "u": { $0._u }, "v": { $0._v }, "w": { $0._w }, "x": { $0._x },
            "y": { $0._y }, "z": { $0._z },
            // Uppercase
            "A": { $0._A }, "B": { $0._B }, "C": { $0._C }, "D": { $0._D },
            "E": { $0._E }, "F": { $0._F }, "G": { $0._G }, "H": { $0._H },
            "I": { $0._I }, "J": { $0._J }, "K": { $0._K }, "L": { $0._L },
            "M": { $0._M }, "N": { $0._N }, "O": { $0._O }, "P": { $0._P },
            "Q": { $0._Q }, "R": { $0._R }, "S": { $0._S }, "T": { $0._T },
            "U": { $0._U }, "V": { $0._V }, "W": { $0._W }, "X": { $0._X },
            "Y": { $0._Y }, "Z": { $0._Z },
            // Numbers
            "0": { $0._0 }, "1": { $0._1 }, "2": { $0._2 }, "3": { $0._3 },
            "4": { $0._4 }, "5": { $0._5 }, "6": { $0._6 }, "7": { $0._7 },
            "8": { $0._8 }, "9": { $0._9 }
        ]

        for (char, function) in testCases {
            let expected = base + String(char)
            let result = function(base)
            XCTAssertEqual(result, expected, "Failed for character '\(char)'")
        }
    }

    func testStringChaining() {
        // Test chaining with a non-empty base
        XCTAssertEqual("test"._a._B._1, "testaB1")

        // Test chaining starting from an empty base
        XCTAssertEqual(""._H._e._l._l._o._0, "Hello0")
    }

    func testWithVariousBaseStrings() {
        // Test appending to an empty string
        XCTAssertEqual(""._a, "a")

        // Test appending to a string with special characters
        XCTAssertEqual("hello!@#"._1, "hello!@#1")

        // Test appending to a string that already has numbers
        XCTAssertEqual("v1.0"._b, "v1.0b")
    }

    func testSpecialCharacters() {
        // Test space and common punctuation
        XCTAssertEqual(""._h._e._l._l._o._space._w._o._r._l._d, "hello world")
        XCTAssertEqual(""._t._e._s._t._underscore._c._a._s._e, "test_case")
        XCTAssertEqual(""._f._i._l._e._dot._t._x._t, "file.txt")
        XCTAssertEqual(""._u._s._e._r._at._e._x._a._m._p._l._e._dot._c._o._m, "user@example.com")

        // Test URL construction
        XCTAssertEqual(""._h._t._t._p._colon._slash._slash._a._p._i._dot._c._o._m, "http://api.com")

        // Test path construction
        XCTAssertEqual(""._slash._u._s._r._slash._b._i._n, "/usr/bin")

        // Test various special characters
        XCTAssertEqual("test"._dash._1._2._3, "test-123")
        XCTAssertEqual("price"._colon._space._dollar._9._9, "price: $99")
        XCTAssertEqual("tag"._hash._1, "tag#1")

        // Test brackets and braces
        XCTAssertEqual("array"._leftBracket._0._rightBracket, "array[0]")
        XCTAssertEqual("func"._leftParen._rightParen, "func()")
        XCTAssertEqual("obj"._leftBrace._rightBrace, "obj{}")

        // Test operators
        XCTAssertEqual("x"._plus._y, "x+y")
        XCTAssertEqual("a"._equals._b, "a=b")
        XCTAssertEqual("x"._star._y, "x*y")

        // Test comparison
        XCTAssertEqual("x"._lessThan._y, "x<y")
        XCTAssertEqual("x"._greaterThan._y, "x>y")

        // Test quotes
        XCTAssertEqual("name"._colon._space._doubleQuote._J._o._h._n._doubleQuote, "name: \"John\"")
        XCTAssertEqual("it"._singleQuote._s, "it's")

        // Test miscellaneous punctuation and symbols
        XCTAssertEqual("wow"._exclamation, "wow!")
        XCTAssertEqual("a"._pipe._b, "a|b")
        XCTAssertEqual("approx"._space._tilde._1._0, "approx ~10")
        XCTAssertEqual(""._backtick._c._o._d._e._backtick, "`code`")
        XCTAssertEqual("2"._caret._3, "2^3")
    }

    func testComplexChaining() {
        // Test building a complete URL
        let url = ""._h._t._t._p._s._colon._slash._slash
            ._a._p._i._dot._e._x._a._m._p._l._e._dot._c._o._m
            ._slash._v._1._slash._u._s._e._r._s
            ._question._i._d._equals._1._2._3
        XCTAssertEqual(url, "https://api.example.com/v1/users?id=123")

        // Test building an email
        let email = ""._j._o._h._n._dot._d._o._e._at._c._o._m._p._a._n._y._dot._c._o._m
        XCTAssertEqual(email, "john.doe@company.com")
    }

    // MARK: - Full Special Character Coverage

    func testAllSpecialCharacterProperties() {
        let base = "x"
        let cases: [(String, Character)] = [
            (base._space, " "), (base._underscore, "_"), (base._dash, "-"),
            (base._dot, "."), (base._comma, ","), (base._colon, ":"),
            (base._semicolon, ";"), (base._slash, "/"), (base._backslash, "\\"),
            (base._at, "@"), (base._hash, "#"), (base._dollar, "$"),
            (base._percent, "%"), (base._ampersand, "&"), (base._star, "*"),
            (base._plus, "+"), (base._equals, "="), (base._question, "?"),
            (base._exclamation, "!"), (base._pipe, "|"), (base._tilde, "~"),
            (base._backtick, "`"), (base._caret, "^"), (base._leftParen, "("),
            (base._rightParen, ")"), (base._leftBracket, "["),
            (base._rightBracket, "]"), (base._leftBrace, "{"),
            (base._rightBrace, "}"), (base._lessThan, "<"),
            (base._greaterThan, ">"), (base._singleQuote, "'"),
            (base._doubleQuote, "\"")
        ]
        for (result, character) in cases {
            XCTAssertEqual(result, base + String(character),
                           "Failed for special character '\(character)'")
        }
    }

    func testUnicodeBasePreserved() {
        // Appending ASCII to a string with multi-byte/emoji content is safe.
        XCTAssertEqual("café"._s, "cafés")
        XCTAssertEqual("🚀"._1, "🚀1")
        XCTAssertEqual("naïve"._dot, "naïve.")
    }

    func testChainingIsPurelyAdditive() {
        // Each property appends exactly one character and never mutates elsewhere.
        let start = "abc"
        let result = start._d._e._f
        XCTAssertEqual(result, "abcdef")
        XCTAssertEqual(start, "abc", "The original value must be unchanged")
    }
}

// MARK: - APStringObfuscation Tests

final class APStringObfuscationTests: XCTestCase {

    func testRepeatingKeyRoundTrip() {
        let secret = "sk_live_abc123"
        let key: [UInt8] = [0x2A, 0x7F, 0x10, 0x5C]
        let obfuscated = APStringObfuscation.obfuscate(secret, key: key)
        XCTAssertEqual(APStringObfuscation.deobfuscate(obfuscated, key: key), secret)
    }

    func testObfuscatedBytesDifferFromPlaintext() {
        let secret = "password"
        let key: [UInt8] = [0x13]
        let obfuscated = APStringObfuscation.obfuscate(secret, key: key)
        XCTAssertNotEqual(obfuscated, Array(secret.utf8),
                          "Obfuscated bytes must not equal the plaintext bytes")
    }

    func testWrongKeyDoesNotRecoverSecret() {
        let secret = "hunter2"
        let obfuscated = APStringObfuscation.obfuscate(secret, key: [0x2A])
        XCTAssertNotEqual(APStringObfuscation.deobfuscate(obfuscated, key: [0x2B]), secret)
    }

    func testEmptyStringRoundTrip() {
        let key: [UInt8] = [0x01, 0x02]
        let obfuscated = APStringObfuscation.obfuscate("", key: key)
        XCTAssertEqual(obfuscated, [])
        XCTAssertEqual(APStringObfuscation.deobfuscate(obfuscated, key: key), "")
    }

    func testUnicodeRoundTrip() {
        let secret = "pÿ🔐 café"
        let key: [UInt8] = [0xAB, 0xCD, 0xEF]
        let obfuscated = APStringObfuscation.obfuscate(secret, key: key)
        XCTAssertEqual(APStringObfuscation.deobfuscate(obfuscated, key: key), secret)
    }
}

// MARK: - APObfuscatedBlob Tests

final class APObfuscatedBlobTests: XCTestCase {

    func testBlobRoundTrip() {
        let secret = "top-secret-value"
        let blob = APObfuscatedBlob(secret, seed: 0xC0FFEE)
        XCTAssertEqual(blob.value, secret)
    }

    func testBlobReconstructionFromStoredForm() {
        // Simulates pasting the generated seed + bytes into source.
        let original = APObfuscatedBlob("api-key-42", seed: 999)
        let reconstructed = APObfuscatedBlob(seed: original.seed, bytes: original.bytes)
        XCTAssertEqual(reconstructed.value, "api-key-42")
    }

    func testBlobBytesHidePlaintext() {
        let secret = "visible?"
        let blob = APObfuscatedBlob(secret, seed: 7)
        XCTAssertNotEqual(blob.bytes, Array(secret.utf8))
    }

    func testDifferentSeedsProduceDifferentBytes() {
        let a = APObfuscatedBlob("same", seed: 1)
        let b = APObfuscatedBlob("same", seed: 2)
        XCTAssertNotEqual(a.bytes, b.bytes)
        XCTAssertEqual(a.value, b.value)
    }

    func testWrongSeedDoesNotRecoverSecret() {
        let blob = APObfuscatedBlob("secret", seed: 100)
        let wrong = APObfuscatedBlob(seed: 101, bytes: blob.bytes)
        XCTAssertNotEqual(wrong.value, "secret")
    }

    func testZeroSeedIsCoerced() {
        let blob = APObfuscatedBlob("x", seed: 0)
        XCTAssertNotEqual(blob.seed, 0)
        XCTAssertEqual(blob.value, "x")
    }

    func testRandomSeedRoundTrip() {
        let secret = "random-seed-secret"
        let blob = APObfuscatedBlob(secret)
        XCTAssertEqual(blob.value, secret)
    }

    func testEmptyBlobRoundTrip() {
        let blob = APObfuscatedBlob("", seed: 42)
        XCTAssertEqual(blob.bytes, [])
        XCTAssertEqual(blob.value, "")
    }
}

// MARK: - Chain Generator Tests

final class APStringChainGeneratorTests: XCTestCase {

    func testGeneratesChainForLetters() {
        XCTAssertEqual("hi".obfuscatedChainSource, "\"\"._h._i")
    }

    func testGeneratedChainCompilesLogically() {
        // The generator output for "Hello0" matches the hand-written chain.
        XCTAssertEqual("Hello0".obfuscatedChainSource, "\"\"._H._e._l._l._o._0")
    }

    func testGeneratesChainForSpecialCharacters() {
        XCTAssertEqual("a.b".obfuscatedChainSource, "\"\"._a._dot._b")
        XCTAssertEqual("x y".obfuscatedChainSource, "\"\"._x._space._y")
    }

    func testEmptyStringGeneratesEmptyBase() {
        XCTAssertEqual("".obfuscatedChainSource, "\"\"")
    }

    func testUnsupportedCharacterReturnsNil() {
        // Emoji has no fluent property.
        XCTAssertNil("hi🚀".obfuscatedChainSource)
    }

    func testUnsupportedCharactersListed() {
        XCTAssertEqual("a🚀b→c".unsupportedObfuscationCharacters, ["🚀", "→"])
        XCTAssertTrue("plain".unsupportedObfuscationCharacters.isEmpty)
    }

    func testPropertyNameLookup() {
        XCTAssertEqual(String.obfuscationPropertyName(for: "a"), "_a")
        XCTAssertEqual(String.obfuscationPropertyName(for: " "), "_space")
        XCTAssertEqual(String.obfuscationPropertyName(for: "@"), "_at")
        XCTAssertNil(String.obfuscationPropertyName(for: "🚀"))
    }
}
