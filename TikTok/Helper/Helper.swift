//
//  Helper.swift
//  TikTok
//
//  Created by ZeKun Li on 2020/1/1.
//  Copyright © 2020 bytedance. All rights reserved.
//

import Foundation

extension Int {
    var toWanStr: String {
        if self > 10000 {
            return  "\(round(Double(exactly: self)! / 10000.0))W"
        }
        return "\(self)"
    }
}
