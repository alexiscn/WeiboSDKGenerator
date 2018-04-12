//
//  Document.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

class Document {
    
    let wbFunction: WBFunction
    
    init(wbFunction: WBFunction) {
        self.wbFunction = wbFunction
    }
    
    var functions: [WBFunction] = []
    
    func generateFunction() {
        
    }
    
    func generateRequestParam() {
        
        //FileManager.default.fileExists(atPath: <#T##String#>)
        
    }
    
    func flush() {
        
    }
}
