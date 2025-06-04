//
//  String+SnakeCase.swift
//  TVLLogging
//
//  Created by Bryan Khufa Rahmada Aula on 25/04/24.
//

import Foundation

extension String {
    func camelCaseToSnakeCase() -> String {
        let acronymPattern: String = "([A-Z]+)([A-Z][a-z]|[0-9])"
        let fullWordsPattern: String = "([a-z])([A-Z]|[0-9])"
        let digitsFirstPattern: String = "([0-9])([A-Z])"
        return processCamelCaseRegex(pattern: acronymPattern)?
            .processCamelCaseRegex(pattern: fullWordsPattern)?
            .processCamelCaseRegex(pattern:digitsFirstPattern)?.lowercased() ?? lowercased()
    }

    private func processCamelCaseRegex(pattern: String) -> String? {
        let regex: NSRegularExpression? = try? NSRegularExpression(pattern: pattern, options: [])
        let range: NSRange = NSRange(location: 0, length: count)
        return regex?.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: "$1_$2")
    }
}
