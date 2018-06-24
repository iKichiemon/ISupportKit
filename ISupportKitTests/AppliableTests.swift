//
//  AppliableTests.swift
//  ISupportKitTests
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import XCTest
@testable import ISupportKit

class AppliableTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanApply() {
        var isExecuted = false
        let expect = "expect"
        let actual = "expect".apply { _ in isExecuted = true }
        XCTAssertTrue(isExecuted)
        XCTAssertEqual(actual, expect)
    }
}
