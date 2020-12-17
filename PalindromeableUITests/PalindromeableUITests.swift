//
//  PalindromeableUITests.swift
//  PalindromeableUITests
//
//  Created by Asaad Jaber on 12/16/20.
//

import XCTest

class PalindromeableUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
