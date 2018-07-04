//
//  DesignableView.swift
//  ISupportKit
//
//  Created by iKu on 2018/07/05.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

@IBDesignable
class DesignableView: UIView {
    
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
    @IBInspectable var shadowOpacity: CGFloat = 1 {
        didSet {
            setupShadow()
        }
    }
    @IBInspectable var shadowOffset: CGSize = CGSize.zero {
        didSet {
            setupShadow()
        }
    }
    @IBInspectable var topColor: UIColor? {
        didSet {
            setGradation()
        }
    }
    @IBInspectable var midColor: UIColor? {
        didSet {
            setGradation()
        }
    }
    @IBInspectable var bottomColor: UIColor? {
        didSet {
            setGradation()
        }
    }
    
    fileprivate var gradientLayer: CAGradientLayer?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setGradation()
        setupShadow()
    }
}

extension DesignableView {
    
    private func setGradation() {
        guard let topColor = topColor, let midColor = midColor, let bottomColor = bottomColor else {
            return
        }
        gradientLayer?.removeFromSuperlayer()
        gradientLayer = CAGradientLayer()
        gradientLayer!.colors = [topColor.cgColor, midColor.cgColor, bottomColor.cgColor]
        gradientLayer!.frame.size = frame.size
        layer.insertSublayer(gradientLayer!, at: 0)
        layer.masksToBounds = true
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
