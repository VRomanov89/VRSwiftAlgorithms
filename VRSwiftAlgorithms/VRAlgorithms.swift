//
//  VRAlgorithms.swift
//  VRSwiftAlgorithms
//
//  Created by Volodymyr Romanov on 8/1/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import Foundation

class VRAlgorithms {
    
    var myStrings: [String] = [
        "This",
        "zxcvbnmlkjhgfdsaqwertyuiop",
        "xzvbamdkqlv",
        "This is a string sentence",
        "test me! Wow what a string"
    ]
    
    func uniqueString(string: String) -> Bool {
        var myDict: [Character:Bool] = [:]
        for char in string.characters {
            if myDict[char] == nil {
                myDict[char] = true
            } else {
                return false
            }
        }
        return true
    }
    
    func permuationString(string1: String, string2: String) -> Bool {
        for char in string1.characters {
            if string1.componentsSeparatedByString("\(char)").count != string2.componentsSeparatedByString("\(char)").count {
                return false
            }
        }
        return true
    }
    
    func stringToURL(string: String) -> String {
        var URL: String = ""
        for  index in 0..<string.characters.count {
            if string[string.startIndex.advancedBy(index)] == " " {
                URL.appendContentsOf("%20")
            } else {
                URL.append(string[string.startIndex.advancedBy(index)])
            }
        }
        return URL
    }
    
}