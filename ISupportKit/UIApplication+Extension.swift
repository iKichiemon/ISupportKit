//
//  UIApplication+Extension.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public extension UIApplication {
    public var topFrontViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else {
            return nil
        }
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }
}
