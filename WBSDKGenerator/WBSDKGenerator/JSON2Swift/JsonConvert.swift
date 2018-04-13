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
    
    public static func convert(data: Data) {
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            if let dict = json as? [String: Any] {
                print(dict.keys)
            }
        } catch let error {
            print(error)
        }
        
    }
    
}
