//
//  PalindromeableTests.swift
//  PalindromeableTests
//

import XCTest
@testable import Palindromeable

class PalindromeableTests: XCTestCase {


    override func setUp() {
        super.setUp()
    }
    
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
    
    func testFail() {
        for str in expectedFail {
            XCTAssertFalse(InputViewController().mapPairs(sorted: str), "Expected fail, failed: \(str).")
        }
    }
    
    func testPass() {
        for str in expectedPass {
            XCTAssertTrue(InputViewController().mapPairs(sorted: str), "Expected pass, failed: \(str).")
        }
    }
    
    func testNegativeStressCases() {
        for str in stressCasesNegative {
            XCTAssertFalse(InputViewController().mapPairs(sorted: str), "Expected stress case fail, failed: \(str).")
        }
    }
}
