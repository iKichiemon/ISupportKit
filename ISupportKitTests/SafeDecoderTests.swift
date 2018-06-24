//
//  SafeDecoderTests.swift
//  ISupportKitTests
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import XCTest
@testable import ISupportKit

private struct DummyObject: Codable {
    let wrontProperty: Int
}

class SafeDecoderTests: XCTestCase {
    
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
    
    func testCanSafeDecode() {
        let jsonDecoder = JSONDecoder()
        XCTAssertThrowsError(try jsonDecoder.decode(DummyObject.self, from: json))
        XCTAssertNoThrow(try jsonDecoder.decode(SafeDecoder<DummyObject>.self, from: json))
    }
}
