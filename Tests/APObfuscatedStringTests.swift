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
}
