//
//  Indent.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/12.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

enum Indent: String {
    case level0 = ""
    case level1 = "    "
    case level2 = "        "
    case level3 = "            "
    case level4 = "                "
    case level5 = "                    "
    
    static func fromInt(_ value: Int) -> Indent {
        switch value {
        case 0:
            return Indent.level0
        case 1:
            return Indent.level1
        case 2:
            return Indent.level2
        case 3:
            return Indent.level3
        case 4:
            return Indent.level4
        case 5:
            return Indent.level5
        default:
            return Indent.level0
        }
    }
}
