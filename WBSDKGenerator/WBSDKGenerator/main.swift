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

var WBResponseFolderPath: String {
    let responseFolderPath = WBOutputDir.appending("/").appending(Document.ResponseFolderName)
    return responseFolderPath
}

var WBParameterFolderPath: String {
    let parametersFolderPath = WBOutputDir.appending("/").appending(Document.ParameterFolderName)
    return parametersFolderPath
}

func doNecessaryWork() {
    
    try? FileManager.default.removeItem(atPath: WBOutputDir)
    try? FileManager.default.createDirectory(atPath: WBOutputDir, withIntermediateDirectories: true, attributes: nil)
    try? FileManager.default.createDirectory(atPath: WBParameterFolderPath, withIntermediateDirectories: true, attributes: nil)
    try? FileManager.default.createDirectory(atPath: WBResponseFolderPath, withIntermediateDirectories: true, attributes: nil)
    
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
        }
    }
}

func testAPIFetcher() {
    let jsonPath = buildPath.appending("Statuses_home_timeline.json")
    if let f = WBApi.fromLocalFilePath(jsonPath) {
//        let fetcher = APIFetcher()
//        fetcher.fetch(api: f) { (json, error) in
//        }
        if let path = Bundle.main.url(forResource: "home", withExtension: "json") {
            if let data = try? Data(contentsOf: path) {
                let json = JsonConvert()
                json.convert(data: data, api: f)
            }
        }
    }
    RunLoop.main.run()
}

doNecessaryWork()
generate()

//testAPIFetcher()
