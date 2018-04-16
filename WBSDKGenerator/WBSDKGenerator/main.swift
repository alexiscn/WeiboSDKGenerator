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
let accessToken = "YOUR_ACCESS_TOKEN" // use access token to simulate API requests and parse response to model

func doNecessaryWork() {
    
    try? FileManager.default.removeItem(atPath: WBOutputDir)
    try? FileManager.default.createDirectory(atPath: WBOutputDir, withIntermediateDirectories: true, attributes: nil)
    
    let parametersFolderPath = WBOutputDir.appending("/").appending(Document.ParameterFolderName)
    try? FileManager.default.createDirectory(atPath: parametersFolderPath, withIntermediateDirectories: true, attributes: nil)
    
    let responseFolderPath = WBOutputDir.appending("/").appending(Document.ResponseFolderName)
    try? FileManager.default.createDirectory(atPath: responseFolderPath, withIntermediateDirectories: true, attributes: nil)
    
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
            if let f = WBApi.fromLocalFilePath(path) {
                let doc = Document(api: f)
                doc.generate()
            }
            print("done file:\(file)")
            print("")
        }
        
    }
}

func testAPIFetcher() {
    let jsonPath = buildPath.appending("Statuses_home_timeline.json")
    if let f = WBApi.fromLocalFilePath(jsonPath) {
        let fetcher = APIFetcher()
        fetcher.fetch(api: f)
    }
    RunLoop.main.run()
}

doNecessaryWork()
generate()

