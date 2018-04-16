//
//  Indent.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/12.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation


/// Represent blank space before code
///
/// - level0: zero space
/// - level1: 4 spaces
/// - level2: 8 spaces
/// - level3: 12 spaces
/// - level4: 16 spaces
/// - level5: 20 spaces
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
    
    func children() -> Indent? {
        return Indent(rawValue: self.rawValue + 4)
    }
    
    func parent() -> Indent? {
        if self.rawValue - 4 < 0 {
            return Indent.level0
        }
        return Indent(rawValue: self.rawValue - 4)
    }
}
