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
    
    public static func convert(data: Data, api: WBApi) {
        //let rootObjectName = "\(api.signature)Response"
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
            if let jsonDict = jsonObject as? [String: Any] {
                let jsonKeys = jsonDict.keys.sorted()
                for jsonKey in jsonKeys {
                    let value = jsonDict[jsonKey]
                    if value == nil {
                        continue
                    }
                    let property = JSONProperty.propertyWithJSONKey(jsonKey, value: value!)
                    property.comment = remarkForJsonKey(jsonKey, api: api)
                    print(property.toString())
                }
            } else if let jsonArray = jsonObject as? [Any] {
                print(jsonArray)
            }
        } catch let error {
            print(error)
        }
    }
    
    class func remarkForJsonKey(_ key: String, api: WBApi) -> String? {
        if let res = api.response.first(where: { $0.name == key }) {
            return res.description
        }
        return nil
    }
}
