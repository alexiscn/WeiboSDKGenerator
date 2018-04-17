//
//  FileDocument.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/16.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

class FileDocument {
    
    var fileName: String
    
    var className: String
    
    var properties: [JSONProperty] = []
    
    init(fileName: String, className: String) {
        self.fileName = fileName
        self.className = className
    }
    
    func flush() {
        let filePath = WBResponseFolderPath.appending("/\(fileName).swift")
        if FileManager.default.fileExists(atPath: filePath) {
            try? FileManager.default.removeItem(atPath: filePath)
        }
        
        var content = ""
        content.append(HeaderString)
        content.append("\n")
        content.append("\n")
        content.append("public struct \(className) : Codable {\n")
        content.append("\n")
        
        for p in properties {
            content.append(p.toDocumentLine())
        }
        
        content.append("    enum CodingKeys: String, CodingKey {\n")
        for p in properties {
            content.append("        case \(p.propertyName) = \"\(p.jsonKey)\"\n")
        }
        content.append("    }\n")
        
        content.append("}\n")
        
        if let data = content.data(using: .utf8) {
            try? data.write(to: URL(fileURLWithPath: filePath))
        }
    }
}
