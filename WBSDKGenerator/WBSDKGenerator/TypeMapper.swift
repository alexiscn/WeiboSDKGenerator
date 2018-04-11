//
//  TypeMapper.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

fileprivate let maps = [
    "string": "String",
    "int64": "Int64",
    "int": "Int",
    "boolean": "bool",
    "array": "[Any]",
    "object": "Any",
    "object array": "[Any]"
]

func swiftTypeFor(_ type: String) -> String {
    return maps[type] ?? "Any"
}
