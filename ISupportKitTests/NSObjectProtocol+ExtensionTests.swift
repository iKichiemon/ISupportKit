//
//  NSObjectProtocol+ExtensionTests.swift
//  ISupportKitTests
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import XCTest
@testable import ISupportKit

private class DummyObject: NSObject {
    let property1: Int = 1
    let property2: Int = 2
    let property3: Int = 3
}

class NSObjectProtocolExtensionTests: XCTestCase {
    
    let json = """
        [
          {"id": "1"},
          {"text": "dummy"}
        ]
        """.data(using: .utf8)!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanDescribeProperties() {
        let expect = "property1: 1\nproperty2: 2\nproperty3: 3"
        let actual = DummyObject().describedProperty
        XCTAssertEqual(actual, expect)
    }
}
