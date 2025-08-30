import Foundation

// MARK: - Helpers

private extension String {
    func obf(_ char: Character) -> String { self + String(char) }
}

private extension NSMutableString {
    @discardableResult
    func obf(_ char: Character) -> NSMutableString {
        append(String(char))
        return self
    }
}

// MARK: - a–z

public extension String {
    var _a: String { obf("a") }
    var _b: String { obf("b") }
    var _c: String { obf("c") }
    var _d: String { obf("d") }
    var _e: String { obf("e") }
    var _f: String { obf("f") }
    var _g: String { obf("g") }
    var _h: String { obf("h") }
    var _i: String { obf("i") }
    var _j: String { obf("j") }
    var _k: String { obf("k") }
    var _l: String { obf("l") }
    var _m: String { obf("m") }
    var _n: String { obf("n") }
    var _o: String { obf("o") }
    var _p: String { obf("p") }
    var _q: String { obf("q") }
    var _r: String { obf("r") }
    var _s: String { obf("s") }
    var _t: String { obf("t") }
    var _u: String { obf("u") }
    var _v: String { obf("v") }
    var _w: String { obf("w") }
    var _x: String { obf("x") }
    var _y: String { obf("y") }
    var _z: String { obf("z") }
}

@objc public extension NSMutableString {
    var _a: NSMutableString { obf("a") }
    var _b: NSMutableString { obf("b") }
    var _c: NSMutableString { obf("c") }
    var _d: NSMutableString { obf("d") }
    var _e: NSMutableString { obf("e") }
    var _f: NSMutableString { obf("f") }
    var _g: NSMutableString { obf("g") }
    var _h: NSMutableString { obf("h") }
    var _i: NSMutableString { obf("i") }
    var _j: NSMutableString { obf("j") }
    var _k: NSMutableString { obf("k") }
    var _l: NSMutableString { obf("l") }
    var _m: NSMutableString { obf("m") }
    var _n: NSMutableString { obf("n") }
    var _o: NSMutableString { obf("o") }
    var _p: NSMutableString { obf("p") }
    var _q: NSMutableString { obf("q") }
    var _r: NSMutableString { obf("r") }
    var _s: NSMutableString { obf("s") }
    var _t: NSMutableString { obf("t") }
    var _u: NSMutableString { obf("u") }
    var _v: NSMutableString { obf("v") }
    var _w: NSMutableString { obf("w") }
    var _x: NSMutableString { obf("x") }
    var _y: NSMutableString { obf("y") }
    var _z: NSMutableString { obf("z") }
}

// MARK: - A–Z

public extension String {
    var _A: String { obf("A") }
    var _B: String { obf("B") }
    var _C: String { obf("C") }
    var _D: String { obf("D") }
    var _E: String { obf("E") }
    var _F: String { obf("F") }
    var _G: String { obf("G") }
    var _H: String { obf("H") }
    var _I: String { obf("I") }
    var _J: String { obf("J") }
    var _K: String { obf("K") }
    var _L: String { obf("L") }
    var _M: String { obf("M") }
    var _N: String { obf("N") }
    var _O: String { obf("O") }
    var _P: String { obf("P") }
    var _Q: String { obf("Q") }
    var _R: String { obf("R") }
    var _S: String { obf("S") }
    var _T: String { obf("T") }
    var _U: String { obf("U") }
    var _V: String { obf("V") }
    var _W: String { obf("W") }
    var _X: String { obf("X") }
    var _Y: String { obf("Y") }
    var _Z: String { obf("Z") }
}

@objc public extension NSMutableString {
    var _A: NSMutableString { obf("A") }
    var _B: NSMutableString { obf("B") }
    var _C: NSMutableString { obf("C") }
    var _D: NSMutableString { obf("D") }
    var _E: NSMutableString { obf("E") }
    var _F: NSMutableString { obf("F") }
    var _G: NSMutableString { obf("G") }
    var _H: NSMutableString { obf("H") }
    var _I: NSMutableString { obf("I") }
    var _J: NSMutableString { obf("J") }
    var _K: NSMutableString { obf("K") }
    var _L: NSMutableString { obf("L") }
    var _M: NSMutableString { obf("M") }
    var _N: NSMutableString { obf("N") }
    var _O: NSMutableString { obf("O") }
    var _P: NSMutableString { obf("P") }
    var _Q: NSMutableString { obf("Q") }
    var _R: NSMutableString { obf("R") }
    var _S: NSMutableString { obf("S") }
    var _T: NSMutableString { obf("T") }
    var _U: NSMutableString { obf("U") }
    var _V: NSMutableString { obf("V") }
    var _W: NSMutableString { obf("W") }
    var _X: NSMutableString { obf("X") }
    var _Y: NSMutableString { obf("Y") }
    var _Z: NSMutableString { obf("Z") }
}

// MARK: - Numbers

public extension String {
    var _0: String { obf("0") }
    var _1: String { obf("1") }
    var _2: String { obf("2") }
    var _3: String { obf("3") }
    var _4: String { obf("4") }
    var _5: String { obf("5") }
    var _6: String { obf("6") }
    var _7: String { obf("7") }
    var _8: String { obf("8") }
    var _9: String { obf("9") }
}

@objc public extension NSMutableString {
    var _0: NSMutableString { obf("0") }
    var _1: NSMutableString { obf("1") }
    var _2: NSMutableString { obf("2") }
    var _3: NSMutableString { obf("3") }
    var _4: NSMutableString { obf("4") }
    var _5: NSMutableString { obf("5") }
    var _6: NSMutableString { obf("6") }
    var _7: NSMutableString { obf("7") }
    var _8: NSMutableString { obf("8") }
    var _9: NSMutableString { obf("9") }
}
