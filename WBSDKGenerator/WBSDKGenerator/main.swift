//
//  main.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

let buildPath = "/Users/xushuifeng/github/WeiboSDKGenerator/build/"

let WBOutputDir = "/Users/xushuifeng/github/WeiboSDKGenerator/WeiboSDK"

try? FileManager.default.removeItem(atPath: WBOutputDir)
try? FileManager.default.createDirectory(atPath: WBOutputDir, withIntermediateDirectories: true, attributes: nil)

func copyNecessaryFiles() {
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

copyNecessaryFiles()

if let contents = try? FileManager.default.contentsOfDirectory(atPath: buildPath) {
    let files = contents.sorted(by: { $0 < $1 })
    if let first = files.first {
        let path = buildPath.appending(first)
        let loader = APILoader()
        if let f = loader.load(at: path) {
            let generator = APIGenerator(wbFunction: f)
            generator.generate()
        }
    }
}



