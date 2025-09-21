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
}
