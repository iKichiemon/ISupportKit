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
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
