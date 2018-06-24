//
//  NibInstantiatableTests.swift
//  ISupportKitTests
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import XCTest
@testable import ISupportKit

class NibInstantiatableTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanInstiate() {
        XCTAssertNoThrow(DummyView.instantiate())
    }
    
    func testCanGetNibName() {
        let expect = "DummyView"
        let actual = DummyView.nibName
        XCTAssertEqual(actual, expect)
    }

}
