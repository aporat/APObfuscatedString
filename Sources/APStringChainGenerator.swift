import Foundation

// MARK: - Chain Source Generation

public extension String {

    /// The property name in the fluent API that appends `character`, if one exists.
    ///
    /// For example `"a"` maps to `"_a"`, `" "` maps to `"_space"`, and an
    /// unsupported character maps to `nil`.
    static func obfuscationPropertyName(for character: Character) -> String? {
        Self.chainPropertyNames[character]
    }

    /// Generates Swift source that reconstructs this string using the fluent API,
    /// e.g. `"hi"` produces `""._h._i`.
    ///
    /// Useful as a build-time / REPL helper so you can generate the obfuscated
    /// chain instead of hand-writing it. Every character in the receiver must be
    /// supported by the fluent API.
    ///
    /// - Returns: The generated source, or `nil` if the string contains a
    ///   character with no corresponding property (see
    ///   ``obfuscationPropertyName(for:)``).
    var obfuscatedChainSource: String? {
        var result = "\"\""
        for character in self {
            guard let name = Self.chainPropertyNames[character] else { return nil }
            result += ".\(name)"
        }
        return result
    }

    /// The characters that cannot be expressed with the fluent API, in order of
    /// first appearance. Empty when ``obfuscatedChainSource`` would succeed.
    var unsupportedObfuscationCharacters: [Character] {
        var seen = Set<Character>()
        var result: [Character] = []
        for character in self where Self.chainPropertyNames[character] == nil {
            if seen.insert(character).inserted {
                result.append(character)
            }
        }
        return result
    }

    /// Maps each supported character to its fluent property name.
    internal static let chainPropertyNames: [Character: String] = {
        var map: [Character: String] = [:]
        for scalar in "abcdefghijklmnopqrstuvwxyz" { map[scalar] = "_\(scalar)" }
        for scalar in "ABCDEFGHIJKLMNOPQRSTUVWXYZ" { map[scalar] = "_\(scalar)" }
        for scalar in "0123456789" { map[scalar] = "_\(scalar)" }
        let specials: [Character: String] = [
            " ": "_space", "_": "_underscore", "-": "_dash", ".": "_dot",
            ",": "_comma", ":": "_colon", ";": "_semicolon", "/": "_slash",
            "\\": "_backslash", "@": "_at", "#": "_hash", "$": "_dollar",
            "%": "_percent", "&": "_ampersand", "*": "_star", "+": "_plus",
            "=": "_equals", "?": "_question", "!": "_exclamation", "|": "_pipe",
            "~": "_tilde", "`": "_backtick", "^": "_caret", "(": "_leftParen",
            ")": "_rightParen", "[": "_leftBracket", "]": "_rightBracket",
            "{": "_leftBrace", "}": "_rightBrace", "<": "_lessThan",
            ">": "_greaterThan", "'": "_singleQuote", "\"": "_doubleQuote"
        ]
        for (character, name) in specials { map[character] = name }
        return map
    }()
}
