//
//  TargetExtension.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public struct TargetedExtension<Base> {
    let base: Base
    init (_ base: Base) {
        self.base = base
    }
}

public protocol TargetedExtensionCompatible {
    associatedtype Compatible
    static var ex: TargetedExtension<Compatible>.Type { get }
    var ex: TargetedExtension<Compatible> { get }
}

public extension TargetedExtensionCompatible {
    public static var ex: TargetedExtension<Self>.Type {
        return TargetedExtension<Self>.self
    }

    public var ex: TargetedExtension<Self> {
        return TargetedExtension(self)
    }
}

extension NSObject: TargetedExtensionCompatible { }
