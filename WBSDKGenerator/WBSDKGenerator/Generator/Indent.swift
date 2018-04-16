//
//  Indent.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/12.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

enum Indent: Int {
    case level0 = 0
    case level1 = 4
    case level2 = 8
    case level3 = 12
    case level4 = 16
    case level5 = 20
    
    func stringValue() -> String {
        return String(repeating: " ", count: self.rawValue)
    }
}
