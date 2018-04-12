//
//  Document.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

class Document {
    
    let filename: String
    
    init(filename: String) {
        self.filename = filename
    }
    
    var functions: [WBFunction] = []
    
    func writeFunction(_ wbFuc: WBFunction) {
        
    }
    
    func flush() {
        
    }
}
