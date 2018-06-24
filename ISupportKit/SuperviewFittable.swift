//
//  SuperviewFittable.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public protocol SuperviewFittable {
    func fitSuperview()
}

public extension SuperviewFittable where Self: UIView {

    public func fitSuperview() {
        guard let superview = self.superview else { return }
        translatesAutoresizingMaskIntoConstraints = superview.translatesAutoresizingMaskIntoConstraints
        if translatesAutoresizingMaskIntoConstraints {
            autoresizingMask = [.flexibleWidth, .flexibleHeight]
            frame = superview.bounds
        } else {
            topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
            bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
            leftAnchor.constraint(equalTo: superview.leftAnchor).isActive = true
            rightAnchor.constraint(equalTo: superview.rightAnchor).isActive = true
        }
    }
}

extension UIView: SuperviewFittable { }
