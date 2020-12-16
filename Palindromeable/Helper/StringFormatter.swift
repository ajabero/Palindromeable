//
//  StringFormatter.swift
//  Palindromeable
//

import Foundation

class StringFormatter {
    func format(str: String) -> [String] {
        var mutableString = str.lowercased()
        let removeSet: Set<Character> = [" "]
        mutableString.removeAll(where: { removeSet.contains($0) })
        return mutableString.map { String($0) }
    }
}
