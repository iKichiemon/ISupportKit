//
//  DesignableImageView.swift
//  ISupportKit
//
//  Created by iKu on 2018/07/05.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

@IBDesignable
final class DesignableImageView: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            setupShadow()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            setupShadow()
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            setupShadow()
        }
    }
    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            setupShadow()
        }
    }
    @IBInspectable var shadowOpacity: CGFloat = 0 {
        didSet {
            setupShadow()
        }
    }
    @IBInspectable var shadowOffset: CGSize = CGSize.zero {
        didSet {
            setupShadow()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupShadow()
    }
    
    private func setupShadow() {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = Float(shadowOpacity)
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
}
