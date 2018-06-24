//
//  ClassNameGetingTests.swift
//  ISupportKitTests
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import XCTest
@testable import ISupportKit

private class DummyClass: NSObject { }

class ClassNameGetingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanGetInstanceClassName() {
        let expect = "DummyClass"
        let actual = DummyClass().className
        XCTAssertEqual(actual, expect)
    }
    
    func testCanGetClassName() {
        let expect = "DummyClass"
        let actual = DummyClass.className
        XCTAssertEqual(actual, expect)
    }
    
}
