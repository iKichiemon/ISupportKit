//
//  EmbeddedNibInstantiatableTests.swift
//  ISupportKitTests
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import XCTest
@testable import ISupportKit

class SuperviewFittableTests: XCTestCase {
    
    private let superviewRect = CGRect(x: 0, y: 0, width: 100, height: 400)
    private var superview: UIView!
    
    override func setUp() {
        super.setUp()
        superview = UIView(frame: superviewRect)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCanFitSuperview() {
        let expect = superviewRect
        
        let childview = UIView(frame: CGRect.init(x: 0, y: 0, width: 10, height: 10))
        superview.addSubview(childview)
        childview.fitSuperview()
        
        let actual = childview.frame
        XCTAssertEqual(actual, expect)
    }
}
