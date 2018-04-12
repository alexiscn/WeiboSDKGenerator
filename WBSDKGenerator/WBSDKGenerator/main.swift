//
//  main.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

// update to your settings
let buildPath = "/Users/xushuifeng/github/WeiboSDKGenerator/builds/"
let WBOutputDir = "/Users/xushuifeng/github/WeiboSDKGenerator/WeiboSDK"
let accessToken = "" // use access token to simulate API requests and parse response to model

func doNecessaryWork() {
    
    try? FileManager.default.removeItem(atPath: WBOutputDir)
    try? FileManager.default.createDirectory(atPath: WBOutputDir, withIntermediateDirectories: true, attributes: nil)
    
    let parametersFolderPath = WBOutputDir.appending("/").appending(Document.ParameterFolderName)
    try? FileManager.default.createDirectory(atPath: parametersFolderPath, withIntermediateDirectories: true, attributes: nil)
    
    if let path = Bundle.main.url(forResource: "Podspec", withExtension: "txt") {
        let filePath = WBOutputDir.appending("/WeiboSDK.podspec")
        let destURL = URL(fileURLWithPath: filePath)
        try? FileManager.default.copyItem(at: path, to: destURL)
    }
    
    if let path = Bundle.main.url(forResource: "WeiboSDK", withExtension: "txt") {
        let filePath = WBOutputDir.appending("/WeiboSDK.swift")
        let destURL = URL(fileURLWithPath: filePath)
        try? FileManager.default.copyItem(at: path, to: destURL)
    }
}

func generate() {
    if let contents = try? FileManager.default.contentsOfDirectory(atPath: buildPath) {
        let files = contents.sorted(by: { $0 < $1 })
        for file in files {
            print("processing file:\(file)")
            let path = buildPath.appending(file)
            
            if let f = WBFunction.fromLocalFilePath(path) {
                let doc = Document(wbFunction: f)
                doc.generate()
                //                let generator = APIGenerator(wbFunction: f)
                //                generator.generate()
            }
            print("done file:\(file)")
            print("")
        }
        
    }
}

doNecessaryWork()
generate()


