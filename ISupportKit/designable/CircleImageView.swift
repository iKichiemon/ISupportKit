//
//  CircleImageView.swift
//  ISupportKit
//
//  Created by iKu on 2018/07/05.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupShadow()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = rect.size.height / 2
        self.layer.shouldRasterize = true
    }
    
    fileprivate func setupShadow() {
        self.layer.cornerRadius = frame.size.height / 2
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
}
