//
//  StringExtensions.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/13.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

extension String {
    func lowercaseFirstLetter() -> String {
        if count == 0 {
            return self
        }
        return prefix(1).lowercased() + dropFirst()
    }
}
