//
//  PalindromeableTests.swift
//  PalindromeableTests
//

import XCTest
@testable import Palindromeable

class PalindromeableTests: XCTestCase {

    var inputViewController: InputViewController!

    override func setUp() {
        super.setUp()
        
        inputViewController = InputViewController()
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
            XCTAssertFalse(inputViewController.mapPairs(sorted: str), "Did not fail test for: \(str).")
        }
    }
    
    func testPass() {
        for str in expectedPass {
            XCTAssertTrue(inputViewController.mapPairs(sorted: str), "Did not pass test for: \(str).")
        }
    }
    
}
