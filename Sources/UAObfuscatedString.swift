import Foundation

// MARK: - Helpers

private extension String {
    func obf(_ char: Character) -> String { self + String(char) }
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
