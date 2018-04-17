//
//  JsonConvert.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/12.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation


/// Convert JSON to Swift Codeable Model
class JsonConvert {
    
    let api: WBApi
    
    init(api: WBApi) {
        self.api = api
    }
    
    public func convert(data: Data) {
        let rootObjectName = "\(api.signature)Response"
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
            if let jsonDict = jsonObject as? [String: Any] {
                convert(keyName: rootObjectName, jsonDict: jsonDict)
            } else if let jsonArray = jsonObject as? [Any] {
                print(jsonArray)
            }
        } catch let error {
            print(error)
        }
    }
    
    func convert(keyName: String, jsonDict: [String: Any]) {
        let doc = FileDocument(fileName: keyName, className: keyName)
        let jsonKeys = jsonDict.keys.sorted()
        for jsonKey in jsonKeys {
            let value = jsonDict[jsonKey]
            if value == nil || value is NSNull {
                continue
            }
            let property = propertyWithJSONKey(jsonKey, value: value!)
            property.comment = remarkForJsonKey(jsonKey, api: api)
            doc.properties.append(property)
        }
        print("writing file =====\(keyName)")
        doc.flush()
    }
    
    func propertyWithJSONKey(_ jsonKey: String, value: Any) -> JSONProperty {
        var property: JSONProperty
        let propertyName = propertyNameFor(JSONkey: jsonKey)
        
        var propertyType = typeNameForValue(value)
        if value is NSDictionary {
            propertyType = camelCaseNameForPropertyName(input: jsonKey, uppcaseFirstCharacter: true)
            property = JSONProperty(jsonKey: jsonKey, propertyName: propertyName, propertyType: propertyType)
            property.isCustomClass = true
            
            convert(keyName: propertyName.uppercaseFirstLetter(), jsonDict: value as! [String: Any])
            
        } else if value is NSArray {
            let array = value as! NSArray
            
            if array.count == 0 {
                propertyType = "[String]"
            }
            
            if array.firstObject is NSDictionary {
                let className = camelCaseNameForPropertyName(input: jsonKey, uppcaseFirstCharacter: true)
                propertyType = className
                convert(keyName: className.uppercaseFirstLetter(), jsonDict: array.firstObject as! [String: Any])
            } else {
                
            }
            property = JSONProperty(jsonKey: jsonKey, propertyName: propertyName, propertyType: propertyType)
            property.isArray = true
            
        } else {
            property = JSONProperty(jsonKey: jsonKey, propertyName: propertyName, propertyType: propertyType)
        }
        return property
    }
    
    func propertyNameFor(JSONkey: String) -> String {
        let name = camelCaseNameForPropertyName(input: JSONkey, uppcaseFirstCharacter: false)
        if isreservedKeywords(name) {
            return "m_" + name
        }
        return name
    }
    
    func camelCaseNameForPropertyName(input: String, uppcaseFirstCharacter: Bool) -> String {
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
    
    func remarkForJsonKey(_ key: String, api: WBApi) -> String? {
        if let res = api.response.first(where: { $0.name == key }) {
            return res.description
        }
        return nil
    }
    
    func isreservedKeywords(_ key: String) -> Bool {
        let keywords = [
            "abstract",
            "assert",
            "boolean",
            "break",
            "byte",
            "case",
            "catch",
            "char",
            "class",
            "const",
            "continue",
            "default",
            "do",
            "double",
            "else",
            "enum",
            "extends",
            "false",
            "final",
            "finally",
            "float",
            "for",
            "goto",
            "if",
            "implements",
            "import",
            "instanceof",
            "int",
            "interface",
            "long",
            "native",
            "new",
            "null",
            "package",
            "private",
            "protected",
            "public",
            "return",
            "short",
            "static",
            "strictfp",
            "super",
            "switch",
            "synchronized",
            "this",
            "throw",
            "throws",
            "transient",
            "true",
            "try",
            "void",
            "volatile",
            "while",
            "class",
            "description"
        ]
        return keywords.contains(key)
    }
}
