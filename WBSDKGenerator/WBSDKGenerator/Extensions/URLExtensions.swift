//
//  URLExtensions.swift
//  WBSDKGenerator
//
//  Created by xushuifeng on 2018/4/14.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

extension URL {
    func queryParameters() -> [String: String?]? {
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: true) else {
            return nil
        }
        guard let items = components.queryItems else {
            return nil
        }
        var parameters: [String: String?] = [:]
        items.forEach({ parameters[$0.name] = $0.value })
        return parameters
    }
}
