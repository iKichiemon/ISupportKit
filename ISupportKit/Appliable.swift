//
//  Appliable.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public protocol Appliable {  }

public extension Appliable {
    @discardableResult
    public func apply(closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}

extension NSObject: Appliable { }
extension CGRect: Appliable { }
extension CGSize: Appliable { }
extension CGFloat: Appliable { }
extension Float: Appliable { }
extension String: Appliable { }
extension Int: Appliable { }
extension Double: Appliable { }
