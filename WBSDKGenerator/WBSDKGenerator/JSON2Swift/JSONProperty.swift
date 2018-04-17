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
    
    /// if is custom class
    weak var propertyDocument: FileDocument?

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
    
    func toDocumentLine() -> String {
        var body = ""
        if let comment = comment {
            body.append("    // \(comment)\n")
        }
        body.append("    public var \(propertyName): \(propertyType)? \n")
        body.append("\n")
        return body
    }
}
