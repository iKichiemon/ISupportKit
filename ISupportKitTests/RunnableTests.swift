//
//  RunnableTests.swift
//  ISupportKitTests
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import XCTest
@testable import ISupportKit

class RunnableTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanInstiate() {
        let expect = "expect_runned"
        let actual = "expect".run { $0 + "_runned"}
        XCTAssertEqual(actual, expect)
    }
}
