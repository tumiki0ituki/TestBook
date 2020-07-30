//
//  CulculatorTests.swift
//  TestBookTests
//
//  Created by PAPC-0467 on 2020/07/27.
//  Copyright © 2020 PAPC-0467. All rights reserved.
//

import XCTest
@testable import TestBook

class CulculatorTests: XCTestCase {
    
    var culculator: Calculator!

    override func setUp() {
        super.setUp()
        self.culculator = Calculator()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
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
    
    func testAdd() {
        XCTAssertEqual(culculator.add(1, 2), 3)
    }

    func testSubtract() {
        XCTAssertEqual(culculator.subtract(3, 1), 2)
    }
    
    func testMultiple() {
        XCTAssertEqual(culculator.multiple(2, 3), 6)
    }
    
    func testDivision() {
        XCTAssertEqual(culculator.division(6, 2), 3)
    }
}
