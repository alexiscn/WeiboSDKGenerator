//
//  WBModels.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/12.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

struct WBFunction: Codable {
    
    /// funcation signature
    let signature: String
    
    /// category of API, eg: Statuses
    let category: String
    
    /// full URL string, eg: https://api.weibo.com/2/statuses/mentions.json
    let url: URL
    
    let console: String?
    
    /// path, eg: /2/statuses/mentions.json
    let path: String
    
    let description: String
    
    let method: WBHTTPMethod
    
    let parameters: [WBParameter]
    
    let authorize: Bool
    
    let response: [WBResponse]
    
    static func fromLocalFilePath(_ path: String) -> WBFunction? {
        let url = URL(fileURLWithPath: path)
        if let data = try? Data(contentsOf: url) {
            do {
                let decoder = JSONDecoder()
                let f = try decoder.decode(WBFunction.self, from: data)
                return f
            } catch let error {
                print("=======================")
                print(path)
                print(error)
            }
        }
        return nil
    }
}

enum WBHTTPMethod: String, Codable {
    case GET, POST
}

struct WBParameter: Codable {
    let name: String
    let type: String
    let optional: Bool
    let description: String
}

struct WBResponse: Codable {
    let name: String
    let type: String
    let description: String
}


