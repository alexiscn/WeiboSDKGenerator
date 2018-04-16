//
//  TypeUtility.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/16.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

func typeNameForValue(_ value: Any) -> String {
    
    var name = ""
    if value is NSArray {
        name = typeNameForArray(value as! NSArray)
    } else if value is NSNumber {
        name = typeForNumber(value as! NSNumber)
    } else if value is NSString {
        let booleans = ["True", "true", "TRUE", "False", "false", "FALSE"]
        if booleans.index(of: value as! String) != nil {
            name = "Bool"
        } else {
            name = "String"
        }
    }
    return name
}

func typeNameForArray(_ array: NSArray) -> String {
    var name: String!
    if array.count == 0 {
        name = "[Any]"
    } else {
        for element in array {
            let elementTypeName = typeNameForValue(element)
            if name == nil {
                name = elementTypeName
            } else {
                if name != elementTypeName {
                    name = "[Any]"
                    break
                }
            }
        }
    }
    return name
}

fileprivate func typeForNumber(_ number: NSNumber) -> String {
    var type: String
    let numberType = CFNumberGetType(number)
    switch numberType {
    case .charType:
        if number.int32Value == 0 || number.int32Value == 1 {
            type = "Bool"
        } else {
            type = "Char"
        }
    case .cgFloatType:
        type = "CGFloat"
    case .doubleType:
        type = "Double"
    case .longType, .longLongType:
        type = "Int64"
    case .floatType:
        type = "Float"
    default:
        type = "Int"
    }
    return type
}
