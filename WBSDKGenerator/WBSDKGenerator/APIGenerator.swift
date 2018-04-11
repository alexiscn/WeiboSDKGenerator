//
//  APIGenerator.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

class APIGenerator {
    
    let headerString = "// NOTE: This file is generated by WBSDKGenerator."
    
    let wbFunction: WBFunction
    
    init(wbFunction: WBFunction) {
        self.wbFunction = wbFunction
    }
    
    func generate() {
        
        var body = ""
        body.append(headerString)
        body.append("\n\n")
        body.append("import GenericNetworking \n")
        body.append("\n")
        
        body.append("// MARK: - \(wbFunction.category) related API \n")
        body.append("extension WeiboSDK {\n")
        body.append("\n")
        body.append("}")
        
        let fileName = "WeiboSDK+\(wbFunction.category).swift"
        let fileURL = URL(fileURLWithPath: WBOutputDir.appending("/\(fileName)"))
        if let data = body.data(using: .utf8) {
            try? data.write(to: fileURL)
        }
    }
    
    func generateFunc(_ f: WBFunction) -> String {
        
        var content = ""
        content.append("/// \(f.description)\n")
        content.append("///\n")
        content.append("/// - Parameters\n")
        content.append("public class func \(f.signature)(")
        
        content.append("}\n")
        return content
    }
}
