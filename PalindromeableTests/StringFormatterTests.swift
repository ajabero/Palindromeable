//
//  StringFormatterTests.swift
//  PalindromeableTests
//

import XCTest
@testable import Palindromeable

class StringFormatterTests: XCTestCase {

    let testInputString = " Pot S po  t s "
    let expectedTestOutput = ["p", "o", "t", "s", "p", "o", "t", "s"]
    
    func testStringFormatter() {
        XCTAssertEqual(StringFormatter().format(str: testInputString), expectedTestOutput)
    }
    
}
