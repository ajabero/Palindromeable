//
//  PalindromeableUITests.swift
//  PalindromeableUITests
//
//  Created by Asaad Jaber on 12/16/20.
//

import XCTest

class PalindromeableUITests: XCTestCase {

    func testPalindromeableKeyReturnsTrueLabel() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        app.navigationBars["Palindromeable"].searchFields["Search"].tap()
        
        let searchSearchField = app.navigationBars["Palindromeable"].searchFields["Search"]
        searchSearchField.tap()
        searchSearchField.typeText("Pot Spot")


        app.buttons["Search"].tap()
        
        XCTAssertTrue(app.collectionViews/*@START_MENU_TOKEN@*/.staticTexts["True"]/*[[".cells.staticTexts[\"True\"]",".staticTexts[\"True\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
    }
    
    func testNonPalindromeableKeyReturnsFalseLabel() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.navigationBars["Palindromeable"].searchFields["Search"].tap()
        
        let searchSearchField = app.navigationBars["Palindromeable"].searchFields["Search"]
        searchSearchField.tap()
        searchSearchField.typeText("Robots")

        app.buttons["Search"].tap()
        
        XCTAssertTrue(app.collectionViews.staticTexts["False"].exists)
    }

    func testEmptySearchControllerDismissalOnTapReturnsEmptyLabel() throws {
        let app = XCUIApplication()
        app.launch()
                
        app.navigationBars["Palindromeable"].searchFields["Search"].tap()
        app/*@START_MENU_TOKEN@*/.otherElements["PopoverDismissRegion"]/*[[".otherElements[\"dismiss popup\"]",".otherElements[\"PopoverDismissRegion\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        XCTAssertFalse(app.collectionViews.staticTexts[""].exists)

    }
    
    func testSearchControllerDismissalAfterResultReturnsEmptyLabel() throws {
        let app = XCUIApplication()
        app.launch()
        
        let searchSearchField = app.navigationBars["Palindromeable"].searchFields["Search"]
        searchSearchField.tap()
        searchSearchField.typeText("Pot Spot")

        app.buttons["Search"].tap()
        
        XCTAssertTrue(app.collectionViews/*@START_MENU_TOKEN@*/.staticTexts["True"]/*[[".cells.staticTexts[\"True\"]",".staticTexts[\"True\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        
        searchSearchField.tap()
        app/*@START_MENU_TOKEN@*/.otherElements["PopoverDismissRegion"]/*[[".otherElements[\"dismiss popup\"]",".otherElements[\"PopoverDismissRegion\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        XCTAssertFalse(app.collectionViews.staticTexts[""].exists)
    }
    
}
