//
//  FileDocument.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/16.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

class FileDocument {
    
    var className: String
    
    var body: String = ""
    
    var properties: [JSONProperty] = []
    
    init(className: String) {
        self.className = className
    }
    
}
