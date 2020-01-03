//
//  ScaleAnimateButton.swift
//  TikTok
//
//  Created by ZeKun Li on 2020/1/3.
//  Copyright © 2020 bytedance. All rights reserved.
//

import UIKit

class ScaleAnimateButton: UIButton {
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        addTarget(self, action: #selector(toggleSeleted), for: .touchUpInside)
    }
    
    @objc func toggleSeleted() {
        isSelected.toggle()
    }
    
    override var isSelected: Bool {
        set {
            super.transform = .init(scaleX: 0.8, y: 0.8)
            
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.1, options: [.beginFromCurrentState,.transitionCrossDissolve], animations: {
                super.isSelected = newValue
                super.transform = .identity
            })
        }
        
        get {
            super.isSelected
        }
    }
}
