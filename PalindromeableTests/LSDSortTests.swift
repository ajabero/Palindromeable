//
//  LSDSortTests.swift
//  PalindromeableTests
//

import XCTest
@testable import Palindromeable

class LSDSortTests: XCTestCase {
    
    func testConstructor() {
        let lsdSort = LSDSort(inputString: ["z", "y", "x"], radix: 256, wordLength: 1)
        
        XCTAssertEqual(lsdSort.R, 256)
        XCTAssertEqual(lsdSort.numElements, ["z", "y", "x"].count)
        XCTAssertEqual(lsdSort.wordLength, 1)
    }
    
    func testLSDSortUpperCaseInput() {
        let sortedAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { String($0) }
        for _ in 0..<10 {
            let shuffled = sortedAlphabet.shuffled()
            let lsdSorted = LSDSort(inputString: shuffled, radix: 256, wordLength: 1)
            XCTAssertEqual(lsdSorted.sorted, sortedAlphabet)
        }
    }
    
    func testLSDSortMixedCaseInput() {
        let sortedAlphabet = "AbCdEFGHijkLmnopQrstuvWxyz".lowercased().map { String($0) }
        let shuffled = sortedAlphabet.shuffled()
        XCTAssertEqual(LSDSort(inputString: shuffled, radix: 256, wordLength: 1).sorted, sortedAlphabet)
    }
    
}
