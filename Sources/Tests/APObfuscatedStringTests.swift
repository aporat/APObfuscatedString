import XCTest
@testable import APObfuscatedString

final class APObfuscatedStringTests: XCTestCase {

    func testStringLowercaseAppending() {
            let base = "test"
            XCTAssertEqual(base._a, "testa")
            XCTAssertEqual(base._z, "testz")
            XCTAssertEqual(base._a._b, "testab") // Chaining
        }
    
    func testStringUppercaseAppending() {
        let base = "test"
        XCTAssertEqual(base._A, "testA")
        XCTAssertEqual(base._Z, "testZ")
        XCTAssertEqual(base._A._B, "testAB") // Chaining
    }

    func testStringNumberAppending() {
        let base = "test"
        XCTAssertEqual(base._1, "test1")
        XCTAssertEqual(base._0, "test0")
        XCTAssertEqual(base._1._2, "test12") // Chaining
    }

    func testStringEmptyBase() {
        let empty = ""
        XCTAssertEqual(empty._a, "a")
        XCTAssertEqual(empty._A, "A")
        XCTAssertEqual(empty._1, "1")
    }

    func testStringMixedChaining() {
        let result = "start"._a._B._1
        XCTAssertEqual(result, "startaB1")
    }

    // MARK: - NSMutableString Tests (Mutable) -

    func testNSMutableStringLowercaseAppending() {
        let base = NSMutableString(string: "test")
        let result = base._a
        XCTAssertEqual(result as String, "testa")
        XCTAssertTrue(result === base) // Check same instance (mutability)
        let chained = base._b
        XCTAssertEqual(chained as String, "testab")
        XCTAssertTrue(chained === base)
    }

    func testNSMutableStringUppercaseAppending() {
        let base = NSMutableString(string: "test")
        let result = base._A
        XCTAssertEqual(result as String, "testA")
        XCTAssertTrue(result === base)
        let chained = base._B
        XCTAssertEqual(chained as String, "testAB")
        XCTAssertTrue(chained === base)
    }

    func testNSMutableStringNumberAppending() {
        let base = NSMutableString(string: "test")
        let result = base._1
        XCTAssertEqual(result as String, "test1")
        XCTAssertTrue(result === base)
        let chained = base._2
        XCTAssertEqual(chained as String, "test12")
        XCTAssertTrue(chained === base)
    }

    func testNSMutableStringEmptyBase() {
        let base = NSMutableString(string: "")
        let result = base._a
        XCTAssertEqual(result as String, "a")
        XCTAssertTrue(result === base)
    }

    func testNSMutableStringMixedChaining() {
        let base = NSMutableString(string: "start")
        let result = base._a._B._1
        XCTAssertEqual(result as String, "startaB1")
        XCTAssertTrue(result === base)
    }

    // MARK: - Edge Cases -

    func testStringWithSpecialCharacters() {
        let base = "hello!@#"
        XCTAssertEqual(base._a, "hello!@#a")
        XCTAssertEqual(base._A, "hello!@#A")
        XCTAssertEqual(base._1, "hello!@#1")
    }

    func testNSMutableStringWithSpecialCharacters() {
        let base = NSMutableString(string: "hello!@#")
        let result = base._a._A._1
        XCTAssertEqual(result as String, "hello!@#aA1")
        XCTAssertTrue(result === base)
    }


}
