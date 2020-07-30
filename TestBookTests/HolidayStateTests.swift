//
//  HolidayStateTests.swift
//  TestBookTests
//
//  Created by PAPC-0467 on 2020/07/27.
//  Copyright © 2020 PAPC-0467. All rights reserved.
//

import XCTest
@testable import TestBook

class HolidayStateTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    /// いけてないテスト（休日はコケる）
    func testIsWorkdayBad() {
        let holidayState = HolidayState()
        XCTAssertFalse(holidayState.isHolidayBad())
    }

    func testIsWorkdayGood() {
        let holidayState = HolidayState()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        
        var date: Date!
        
        // 月曜日
        date = formatter.date(from: "2020/07/27")
        XCTAssertFalse(holidayState.isHoliday(date))
        
        // 土曜日
        date = formatter.date(from: "2020/08/01")
        XCTAssertTrue(holidayState.isHoliday(date))
        
        // 日曜日
        date = formatter.date(from: "2020/08/02")
        XCTAssertTrue(holidayState.isHoliday(date))
        
        // 金曜日
        date = formatter.date(from: "2020/08/07")
        XCTAssertFalse(holidayState.isHoliday(date))
    }
}
