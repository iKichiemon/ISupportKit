//
//  EmbeddedNibInstantiatable.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public protocol EmbeddedNibInstantiatable {
    associatedtype Embedded: NibInstantiatable
}

public extension EmbeddedNibInstantiatable where Self: UIView, Embedded: UIView {
    public var embedded: Embedded { return subviews[0] as! Embedded }
    
    public func configureEmbededView() {
        let view = Embedded.instantiate()
        insertSubview(view, at: 0)
        view.fitSuperview()
    }
}

