//
//  Line.swift
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/16.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation

extension String {
    func toLines() -> [Line] {
        let array = self.split(separator: "\n")
        var lines: [Line] = []
        array.forEach { lines.append(Line.fromText(String($0))) }
        return lines
    }
}

struct Line {
    
    let content: String
    
    let indent: Indent
    
    static var newLine: Line {
        return Line(content: " ", indent: .level0)
    }
    
    static func fromText(_ text: String) -> Line {
        if text.count == 0 {
            return Line(content: text, indent: .level0)
        }
        var i = 0
        while text.dropFirst() == " " {
            i = i + 1
        }
        return Line(content: text, indent: Indent(rawValue: i)!)
    }
    
    func text() -> String {
        return indent.stringValue() + content + "\n"
    }
    
    static func listToString(_ lines: [Line]) -> String {
        var result = ""
        lines.forEach({ result += $0.text() })
        return result
    }
}
