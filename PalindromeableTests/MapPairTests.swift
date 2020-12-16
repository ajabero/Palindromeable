//
//  MapPairTests.swift
//  PalindromeableTests
//

import XCTest
@testable import Palindromeable

class MapPairTests: XCTestCase {

    let expectedFail = [
        "",
        "a",
        "ab",
        "abc"
    ]
    
    let expectedPass = [
        "nrr",
        "rnn",
        "nnrrssu",
        "nrrssuu",
        "nnrssuu",
        "nnrrssuu",
        "nnnrrssuu",
        "nnrrssuuu"
    ]
    
    let stressCasesNegative = [
        "nnnrrssuuu",
        "nnrrssud",
    ]
    
    func testMapPairsFail() {
        for str in expectedFail {
            XCTAssertFalse(MapPairs().mapPairs(sorted: str.map { String($0) }), "Expected fail, failed: \(str).")
        }
    }
    
    func testMapPairsPass() {
        for str in expectedPass {
            XCTAssertTrue(MapPairs().mapPairs(sorted: str.map { String($0) }), "Expected pass, failed: \(str).")
        }
    }
    
    func testMapPairsNegativeStressCases() {
        for str in stressCasesNegative {
            XCTAssertFalse(MapPairs().mapPairs(sorted: str.map { String($0) }), "Expected stress case fail, failed: \(str).")
        }
    }

}
