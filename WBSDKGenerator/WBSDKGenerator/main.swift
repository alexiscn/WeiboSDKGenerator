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
