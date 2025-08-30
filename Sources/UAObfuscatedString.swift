import Foundation

// MARK: - String helpers
private extension String {
    func obfuscated(_ char: Character) -> String {
        return self + String(char)
    }
}

private extension NSMutableString {
    @discardableResult
    func obfuscated(_ char: Character) -> NSMutableString {
        append(String(char))
        return self
    }
}

// MARK: - a–z
public extension String {
    var _a: String { obfuscated("a") }
    var _b: String { obfuscated("b") }
    var _c: String { obfuscated("c") }
    var _d: String { obfuscated("d") }
    var _e: String { obfuscated("e") }
    var _f: String { obfuscated("f") }
    var _g: String { obfuscated("g") }
    var _h: String { obfuscated("h") }
    var _i: String { obfuscated("i") }
    var _j: String { obfuscated("j") }
    var _k: String { obfuscated("k") }
    var _l: String { obfuscated("l") }
    var _m: String { obfuscated("m") }
    var _n: String { obfuscated("n") }
    var _o: String { obfuscated("o") }
    var _p: String { obfuscated("p") }
    var _q: String { obfuscated("q") }
    var _r: String { obfuscated("r") }
    var _s: String { obfuscated("s") }
    var _t: String { obfuscated("t") }
    var _u: String { obfuscated("u") }
    var _v: String { obfuscated("v") }
    var _w: String { obfuscated("w") }
    var _x: String { obfuscated("x") }
    var _y: String { obfuscated("y") }
    var _z: String { obfuscated("z") }
}

@objc public extension NSMutableString {
    var _a: NSMutableString { obfuscated("a") }
    var _b: NSMutableString { obfuscated("b") }
    var _c: NSMutableString { obfuscated("c") }
    var _d: NSMutableString { obfuscated("d") }
    var _e: NSMutableString { obfuscated("e") }
    var _f: NSMutableString { obfuscated("f") }
    var _g: NSMutableString { obfuscated("g") }
    var _h: NSMutableString { obfuscated("h") }
    var _i: NSMutableString { obfuscated("i") }
    var _j: NSMutableString { obfuscated("j") }
    var _k: NSMutableString { obfuscated("k") }
    var _l: NSMutableString { obfuscated("l") }
    var _m: NSMutableString { obfuscated("m") }
    var _n: NSMutableString { obfuscated("n") }
    var _o: NSMutableString { obfuscated("o") }
    var _p: NSMutableString { obfuscated("p") }
    var _q: NSMutableString { obfuscated("q") }
    var _r: NSMutableString { obfuscated("r") }
    var _s: NSMutableString { obfuscated("s") }
    var _t: NSMutableString { obfuscated("t") }
    var _u: NSMutableString { obfuscated("u") }
    var _v: NSMutableString { obfuscated("v") }
    var _w: NSMutableString { obfuscated("w") }
    var _x: NSMutableString { obfuscated("x") }
    var _y: NSMutableString { obfuscated("y") }
    var _z: NSMutableString { obfuscated("z") }
}

// MARK: - A–Z
public extension String {
    var _A: String { obfuscated("A") }
    var _B: String { obfuscated("B") }
    var _C: String { obfuscated("C") }
    var _D: String { obfuscated("D") }
    var _E: String { obfuscated("E") }
    var _F: String { obfuscated("F") }
    var _G: String { obfuscated("G") }
    var _H: String { obfuscated("H") }
    var _I: String { obfuscated("I") }
    var _J: String { obfuscated("J") }
    var _K: String { obfuscated("K") }
    var _L: String { obfuscated("L") }
    var _M: String { obfuscated("M") }
    var _N: String { obfuscated("N") }
    var _O: String { obfuscated("O") }
    var _P: String { obfuscated("P") }
    var _Q: String { obfuscated("Q") }
    var _R: String { obfuscated("R") }
    var _S: String { obfuscated("S") }
    var _T: String { obfuscated("T") }
    var _U: String { obfuscated("U") }
    var _V: String { obfuscated("V") }
    var _W: String { obfuscated("W") }
    var _X: String { obfuscated("X") }
    var _Y: String { obfuscated("Y") }
    var _Z: String { obfuscated("Z") }
}

@objc public extension NSMutableString {
    var _A: NSMutableString { obfuscated("A") }
    var _B: NSMutableString { obfuscated("B") }
    var _C: NSMutableString { obfuscated("C") }
    var _D: NSMutableString { obfuscated("D") }
    var _E: NSMutableString { obfuscated("E") }
    var _F: NSMutableString { obfuscated("F") }
    var _G: NSMutableString { obfuscated("G") }
    var _H: NSMutableString { obfuscated("H") }
    var _I: NSMutableString { obfuscated("I") }
    var _J: NSMutableString { obfuscated("J") }
    var _K: NSMutableString { obfuscated("K") }
    var _L: NSMutableString { obfuscated("L") }
    var _M: NSMutableString { obfuscated("M") }
    var _N: NSMutableString { obfuscated("N") }
    var _O: NSMutableString { obfuscated("O") }
    var _P: NSMutableString { obfuscated("P") }
    var _Q: NSMutableString { obfuscated("Q") }
    var _R: NSMutableString { obfuscated("R") }
    var _S: NSMutableString { obfuscated("S") }
    var _T: NSMutableString { obfuscated("T") }
    var _U: NSMutableString { obfuscated("U") }
    var _V: NSMutableString { obfuscated("V") }
    var _W: NSMutableString { obfuscated("W") }
    var _X: NSMutableString { obfuscated("X") }
    var _Y: NSMutableString { obfuscated("Y") }
    var _Z: NSMutableString { obfuscated("Z") }
}

// MARK: - Numbers
public extension String {
    var _1: String { obfuscated("1") }
    var _2: String { obfuscated("2") }
    var _3: String { obfuscated("3") }
    var _4: String { obfuscated("4") }
    var _5: String { obfuscated("5") }
    var _6: String { obfuscated("6") }
    var _7: String { obfuscated("7") }
    var _8: String { obfuscated("8") }
    var _9: String { obfuscated("9") }
    var _0: String { obfuscated("0") }
}

@objc public extension NSMutableString {
    var _1: NSMutableString { obfuscated("1") }
    var _2: NSMutableString { obfuscated("2") }
    var _3: NSMutableString { obfuscated("3") }
    var _4: NSMutableString { obfuscated("4") }
    var _5: NSMutableString { obfuscated("5") }
    var _6: NSMutableString { obfuscated("6") }
    var _7: NSMutableString { obfuscated("7") }
    var _8: NSMutableString { obfuscated("8") }
    var _9: NSMutableString { obfuscated("9") }
    var _0: NSMutableString { obfuscated("0") }
}
