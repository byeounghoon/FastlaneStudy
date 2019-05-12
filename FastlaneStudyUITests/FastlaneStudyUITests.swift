//
//  FastlaneStudyUITests.swift
//  FastlaneStudyUITests
//
//  Created by ByoungHoon Yun on 12/05/2019.
//  Copyright © 2019 BH. All rights reserved.
//

import XCTest

class FastlaneStudyUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        snapshot("first_screen")
        let app = XCUIApplication()
        app.statusBars.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element(boundBy: 1)/*@START_MENU_TOKEN@*/.swipeLeft()/*[[".swipeDown()",".swipeLeft()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        snapshot("second_screen")
        app.buttons["두번째 화면 버튼"].tap()
        snapshot("third_screen")
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
