//
//  Runnable.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public protocol Runnable { }

public extension Runnable {
    @discardableResult
    public func run<T>(closure: (Self) -> T) -> T {
        return closure(self)
    }
}

extension NSObject: Runnable { }
extension CGRect: Runnable { }
extension CGSize: Runnable { }
extension CGFloat: Runnable { }
extension Float: Runnable { }
extension String: Runnable { }
extension Int: Runnable { }
extension Double: Runnable { }
