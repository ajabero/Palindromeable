//
//  LSDSort.swift
//  Palindromeable
//

import Foundation

class LSDSort {
    var R: Int
    var numElements: Int
    private var strSet: [String] = []
    var wordLength: Int
    var sorted: [String] = []
    
    init(inputString: [String], radix: Int, wordLength: Int) {
        self.R = radix
        self.numElements = inputString.count
        self.strSet = inputString
        self.wordLength = wordLength
        LSDSort()
    }
    
    private func LSDSort() {
        var aux: [String] = Array(repeating: "", count: strSet.count)
        for d in (0..<wordLength).reversed() {
            var count: [Int] = Array(repeating: 0, count: R + 1)
            for i in 0..<strSet.count {
                let unicodeIndex = getChar(d, strSet[i])
                count[unicodeIndex + 1] += 1
            }
            
            var cumFreq: [Int] = count
            for r in 1...R {
                cumFreq[r] += cumFreq[r - 1]
            }

            for i in 0..<strSet.count {
                let c = getChar(d, strSet[i])
                aux[cumFreq[c]] = strSet[i]
                cumFreq[c] += 1
            }
            
            for i in 0..<strSet.count {
                strSet[i] = aux[i]
            }
        }
        
        sorted = strSet
    }
    
    private func getChar(_ atDepth: Int, _ str: String) -> Int {
        if atDepth >= Array(str).count || atDepth < 0 {
            return 0
        }
        
        let charAtD = Array(str)[atDepth]
        let unicode = charAtD.asciiValue!
        return Int(unicode)
    }
}
