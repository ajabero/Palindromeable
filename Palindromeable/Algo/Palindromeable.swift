//
//  Palindromeable.swift
//  Palindromeable
//

import Foundation

class Palindromeable {
    private var sortedStr: [String]!
    private let mapPairs: MapPairs
    
    init(str: String) {
        mapPairs = MapPairs()
        sortedStr = LSDSort(inputString: StringFormatter().format(str: str), radix: 256, wordLength: 1).sorted
    }

    func isPalindromeable() -> Bool {
        return mapPairs.mapPairs(sorted: sortedStr)
    }
}
