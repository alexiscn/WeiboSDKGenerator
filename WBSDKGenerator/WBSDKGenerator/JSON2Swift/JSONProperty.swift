//
//  JSONProperty.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/16.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

class JSONProperty: Equatable {
    
    /// Origin json key, eg: access_token
    var jsonKey: String
    
    /// mapped property name, eg: accessToken
    var propertyName: String
    
    /// property type, eg: String
    var propertyType: String

    /// remark of property
    var comment: String?
    
    var isCustomClass: Bool = false
    
    var isArray: Bool = false
    
    init(jsonKey: String, propertyName: String, propertyType: String) {
        self.jsonKey = jsonKey
        self.propertyName = propertyName
        self.propertyType = propertyType
    }
    
    static func == (lhs: JSONProperty, rhs: JSONProperty) -> Bool {
        return true
    }
    
    func toString() -> String {
        return propertyName + ": " + propertyType + (comment == nil ? "" : "//\(comment!)")
    }
}


extension JSONProperty {
    
    func toDocumentLine() -> String {
        var body = ""
        if let comment = comment {
            body.append("    // \(comment)\n")
        }
        body.append("    public var \(propertyName): \(propertyType)? \n")
        body.append("\n")
        return body
    }
    
    class func propertyWithJSONKey(_ jsonKey: String, value: Any) -> JSONProperty {
        var property: JSONProperty
        let propertyName = camelCaseNameForPropertyName(input: jsonKey, uppcaseFirstCharacter: false)
        var propertyType = typeNameForValue(value)
        if value is NSDictionary {
            propertyType = camelCaseNameForPropertyName(input: jsonKey, uppcaseFirstCharacter: true)
            property = JSONProperty(jsonKey: jsonKey, propertyName: propertyName, propertyType: propertyType)
            property.isCustomClass = true
        } else if value is NSArray {
            let array = value as! NSArray
            if array.firstObject is NSDictionary {
                let className = camelCaseNameForPropertyName(input: jsonKey, uppcaseFirstCharacter: true)
                propertyType = className
            } else {
                
            }
            property = JSONProperty(jsonKey: jsonKey, propertyName: propertyName, propertyType: propertyType)
            property.isArray = true
            
        } else {
            property = JSONProperty(jsonKey: jsonKey, propertyName: propertyName, propertyType: propertyType)
        }
        return property
    }
    
    class func camelCaseNameForPropertyName(input: String, uppcaseFirstCharacter: Bool) -> String {
        var output = ""
        let str = input.replacingOccurrences(of: " ", with: "")
        var needsUppercase = uppcaseFirstCharacter
        for char in str {
            if char == "_" {
                needsUppercase = true
                continue
            }
            if needsUppercase {
                let up = String(char).uppercased()
                output += up
                needsUppercase = false
            } else {
                output += String(char)
            }
        }
        return output
    }
}
