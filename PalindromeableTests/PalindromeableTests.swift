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
    ]
    
    let expectedPass = [
        "opp",
        "nnrrssuu",
        "nnnrrssuu",
        "nnnnrrssuu"
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
    
}
