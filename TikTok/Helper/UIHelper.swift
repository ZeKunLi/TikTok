//
//  UIHelper.swift
//  TikTok
//
//  Created by ZeKun Li on 2020/1/2.
//  Copyright © 2020 bytedance. All rights reserved.
//

import UIKit


extension UIView {
    @IBInspectable public var cornerRadius: CGFloat {
        get {
            self.layer.cornerRadius
        }
        set {
            if newValue > 0 {
                clipsToBounds = true
            }
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat {
        get {
            layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable public var borderColor: UIColor {
        get {
            UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}
