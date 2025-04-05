import XCTest
@testable import APObfuscatedString

final class APObfuscatedStringTests: XCTestCase {
    
    // MARK: - String Tests -
    
    func testStringLowercaseAppending() {
        let base = "test"
        XCTAssertEqual(base._a, "testa")
        XCTAssertEqual(base._b, "testb")
        XCTAssertEqual(base._c, "testc")
        XCTAssertEqual(base._d, "testd")
        XCTAssertEqual(base._e, "teste")
        XCTAssertEqual(base._f, "testf")
        XCTAssertEqual(base._g, "testg")
        XCTAssertEqual(base._h, "testh")
        XCTAssertEqual(base._i, "testi")
        XCTAssertEqual(base._j, "testj")
        XCTAssertEqual(base._k, "testk")
        XCTAssertEqual(base._l, "testl")
        XCTAssertEqual(base._m, "testm")
        XCTAssertEqual(base._n, "testn")
        XCTAssertEqual(base._o, "testo")
        XCTAssertEqual(base._p, "testp")
        XCTAssertEqual(base._q, "testq")
        XCTAssertEqual(base._r, "testr")
        XCTAssertEqual(base._s, "tests")
        XCTAssertEqual(base._t, "testt")
        XCTAssertEqual(base._u, "testu")
        XCTAssertEqual(base._v, "testv")
        XCTAssertEqual(base._w, "testw")
        XCTAssertEqual(base._x, "testx")
        XCTAssertEqual(base._y, "testy")
        XCTAssertEqual(base._z, "testz")
    }
    
    func testStringUppercaseAppending() {
        let base = "test"
        XCTAssertEqual(base._A, "testA")
        XCTAssertEqual(base._B, "testB")
        XCTAssertEqual(base._C, "testC")
        XCTAssertEqual(base._D, "testD")
        XCTAssertEqual(base._E, "testE")
        XCTAssertEqual(base._F, "testF")
        XCTAssertEqual(base._G, "testG")
        XCTAssertEqual(base._H, "testH")
        XCTAssertEqual(base._I, "testI")
        XCTAssertEqual(base._J, "testJ")
        XCTAssertEqual(base._K, "testK")
        XCTAssertEqual(base._L, "testL")
        XCTAssertEqual(base._M, "testM")
        XCTAssertEqual(base._N, "testN")
        XCTAssertEqual(base._O, "testO")
        XCTAssertEqual(base._P, "testP")
        XCTAssertEqual(base._Q, "testQ")
        XCTAssertEqual(base._R, "testR")
        XCTAssertEqual(base._S, "testS")
        XCTAssertEqual(base._T, "testT")
        XCTAssertEqual(base._U, "testU")
        XCTAssertEqual(base._V, "testV")
        XCTAssertEqual(base._W, "testW")
        XCTAssertEqual(base._X, "testX")
        XCTAssertEqual(base._Y, "testY")
        XCTAssertEqual(base._Z, "testZ")
    }
    
    func testStringNumberAppending() {
        let base = "test"
        XCTAssertEqual(base._0, "test0")
        XCTAssertEqual(base._1, "test1")
        XCTAssertEqual(base._2, "test2")
        XCTAssertEqual(base._3, "test3")
        XCTAssertEqual(base._4, "test4")
        XCTAssertEqual(base._5, "test5")
        XCTAssertEqual(base._6, "test6")
        XCTAssertEqual(base._7, "test7")
        XCTAssertEqual(base._8, "test8")
        XCTAssertEqual(base._9, "test9")
    }
    
    func testStringChaining() {
        let result = "test"._a._B._1
        XCTAssertEqual(result, "testaB1")
    }
    
    func testStringEmptyBase() {
        let empty = ""
        XCTAssertEqual(empty._a, "a")
    }
    
    // MARK: - NSMutableString Tests -
    
    func testNSMutableStringLowercaseAppending() {
        let base = NSMutableString(string: "test")
        XCTAssertEqual(base._a as String, "testa")
        base.setString("test")
        XCTAssertEqual(base._b as String, "testb")
        base.setString("test")
        XCTAssertEqual(base._c as String, "testc")
        base.setString("test")
        XCTAssertEqual(base._d as String, "testd")
        base.setString("test")
        XCTAssertEqual(base._e as String, "teste")
        base.setString("test")
        XCTAssertEqual(base._f as String, "testf")
        base.setString("test")
        XCTAssertEqual(base._g as String, "testg")
        base.setString("test")
        XCTAssertEqual(base._h as String, "testh")
        base.setString("test")
        XCTAssertEqual(base._i as String, "testi")
        base.setString("test")
        XCTAssertEqual(base._j as String, "testj")
        base.setString("test")
        XCTAssertEqual(base._k as String, "testk")
        base.setString("test")
        XCTAssertEqual(base._l as String, "testl")
        base.setString("test")
        XCTAssertEqual(base._m as String, "testm")
        base.setString("test")
        XCTAssertEqual(base._n as String, "testn")
        base.setString("test")
        XCTAssertEqual(base._o as String, "testo")
        base.setString("test")
        XCTAssertEqual(base._p as String, "testp")
        base.setString("test")
        XCTAssertEqual(base._q as String, "testq")
        base.setString("test")
        XCTAssertEqual(base._r as String, "testr")
        base.setString("test")
        XCTAssertEqual(base._s as String, "tests")
        base.setString("test")
        XCTAssertEqual(base._t as String, "testt")
        base.setString("test")
        XCTAssertEqual(base._u as String, "testu")
        base.setString("test")
        XCTAssertEqual(base._v as String, "testv")
        base.setString("test")
        XCTAssertEqual(base._w as String, "testw")
        base.setString("test")
        XCTAssertEqual(base._x as String, "testx")
        base.setString("test")
        XCTAssertEqual(base._y as String, "testy")
        base.setString("test")
        XCTAssertEqual(base._z as String, "testz")
    }
    
    func testNSMutableStringUppercaseAppending() {
        let base = NSMutableString(string: "test")
        XCTAssertEqual(base._A as String, "testA")
        base.setString("test")
        XCTAssertEqual(base._B as String, "testB")
        base.setString("test")
        XCTAssertEqual(base._C as String, "testC")
        base.setString("test")
        XCTAssertEqual(base._D as String, "testD")
        base.setString("test")
        XCTAssertEqual(base._E as String, "testE")
        base.setString("test")
        XCTAssertEqual(base._F as String, "testF")
        base.setString("test")
        XCTAssertEqual(base._G as String, "testG")
        base.setString("test")
        XCTAssertEqual(base._H as String, "testH")
        base.setString("test")
        XCTAssertEqual(base._I as String, "testI")
        base.setString("test")
        XCTAssertEqual(base._J as String, "testJ")
        base.setString("test")
        XCTAssertEqual(base._K as String, "testK")
        base.setString("test")
        XCTAssertEqual(base._L as String, "testL")
        base.setString("test")
        XCTAssertEqual(base._M as String, "testM")
        base.setString("test")
        XCTAssertEqual(base._N as String, "testN")
        base.setString("test")
        XCTAssertEqual(base._O as String, "testO")
        base.setString("test")
        XCTAssertEqual(base._P as String, "testP")
        base.setString("test")
        XCTAssertEqual(base._Q as String, "testQ")
        base.setString("test")
        XCTAssertEqual(base._R as String, "testR")
        base.setString("test")
        XCTAssertEqual(base._S as String, "testS")
        base.setString("test")
        XCTAssertEqual(base._T as String, "testT")
        base.setString("test")
        XCTAssertEqual(base._U as String, "testU")
        base.setString("test")
        XCTAssertEqual(base._V as String, "testV")
        base.setString("test")
        XCTAssertEqual(base._W as String, "testW")
        base.setString("test")
        XCTAssertEqual(base._X as String, "testX")
        base.setString("test")
        XCTAssertEqual(base._Y as String, "testY")
        base.setString("test")
        XCTAssertEqual(base._Z as String, "testZ")
    }
    
    func testNSMutableStringNumberAppending() {
        let base = NSMutableString(string: "test")
        XCTAssertEqual(base._0 as String, "test0")
        base.setString("test")
        XCTAssertEqual(base._1 as String, "test1")
        base.setString("test")
        XCTAssertEqual(base._2 as String, "test2")
        base.setString("test")
        XCTAssertEqual(base._3 as String, "test3")
        base.setString("test")
        XCTAssertEqual(base._4 as String, "test4")
        base.setString("test")
        XCTAssertEqual(base._5 as String, "test5")
        base.setString("test")
        XCTAssertEqual(base._6 as String, "test6")
        base.setString("test")
        XCTAssertEqual(base._7 as String, "test7")
        base.setString("test")
        XCTAssertEqual(base._8 as String, "test8")
        base.setString("test")
        XCTAssertEqual(base._9 as String, "test9")
    }
    
    func testNSMutableStringChaining() {
        let base = NSMutableString(string: "test")
        let result = base._a._B._1
        XCTAssertEqual(result as String, "testaB1")
    }
    
    func testNSMutableStringEmptyBase() {
        let base = NSMutableString(string: "")
        XCTAssertEqual(base._a as String, "a")
    }
    
    // MARK: - Edge Case -
    
    func testSpecialCharacters() {
        let base = NSMutableString(string: "hello!@#")
        XCTAssertEqual(base._a as String, "hello!@#a")
    }
}
