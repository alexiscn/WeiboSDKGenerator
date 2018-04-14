//
//  APIFetcher.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

class APIFetcher {
    
    let session: URLSession
    
    var task: URLSessionTask?
    
    init() {
        let configuration = URLSessionConfiguration.default
        self.session = URLSession(configuration: configuration)
    }
    
    func fetch(api: WBFunction) {
        
        var queryString = "access_token=\(accessToken)"
        if let consoleURL = URL(string: api.console ?? ""),
            let parameters = consoleURL.queryParameters() {
            let keys = parameters.filter({ return $0.key.hasPrefix("key") })
            for key in keys {
                let k = key.key.replacingOccurrences(of: "key", with: "value")
                if let value = parameters[k] {
                    queryString += "&\(key.value!)=\(value!)"
                }
            }
        }
        let urlString = api.url.absoluteString.appending("?\(queryString)")
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = api.method.rawValue
        
        print(urlString)
        
        self.task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print(error)
            } else {
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                        print(json)
                    } catch let e {
                        print(e)
                    }
                }
            }
        }
        self.task?.resume()
    }
}
