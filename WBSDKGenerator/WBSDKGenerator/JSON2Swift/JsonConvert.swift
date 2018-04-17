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
    
    public func convert(data: Data, api: WBApi) {
        
        let rootObjectName = "\(api.signature)Response"
        let doc = FileDocument(fileName: rootObjectName, className: rootObjectName)
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
            if let jsonDict = jsonObject as? [String: Any] {
                let jsonKeys = jsonDict.keys.sorted()
                for jsonKey in jsonKeys {
                    let value = jsonDict[jsonKey]
                    if value == nil {
                        continue
                    }
                    let property = propertyWithJSONKey(jsonKey, value: value!)
                    property.comment = remarkForJsonKey(jsonKey, api: api)
                    doc.properties.append(property)
                }
                doc.flush()
            } else if let jsonArray = jsonObject as? [Any] {
                print(jsonArray)
            }
        } catch let error {
            print(error)
        }
    }
    
    func propertyWithJSONKey(_ jsonKey: String, value: Any) -> JSONProperty {
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
}
