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
        "abc",
    ]
    
    let expectedPass = [
        "Pot Spot",
        "Car Race",
        "Gym my",
        "Mer sir is rum rudder",
        "$$%%##&&"
    ]
    
    func testPalindromeableExpectedFail() {
        for str in expectedFail {
            XCTAssertFalse(Palindromeable(str: str).isPalindromeable())
        }
    }
    
    func testPalindromeableExpectedPass() {
        for str in expectedPass {
            XCTAssertTrue(Palindromeable(str: str).isPalindromeable())
        }
    }

}
