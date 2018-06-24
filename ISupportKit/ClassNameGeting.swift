//
//  ClassNameGeting.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public protocol ClassNameGeting {
    static var className: String { get }
    var className: String { get }
}

public extension ClassNameGeting {
    public static var className: String {
        return String(describing: self)
    }
    
    public var className: String {
        return type(of: self).className
    }
}

extension NSObject: ClassNameGeting {}
