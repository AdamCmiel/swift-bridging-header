//
//  Tool.swift
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//

import Foundation

@objc class Tool: Equatable {
    var weight: Int
    var length: Int
    
    init(weight: Int) {
        self.weight = weight
        self.length = 1
    }
    
    init(weight: Int, length: Int) {
        self.weight = weight
        self.length = length
    }
    
    @objc(description)
    func description() -> String {
        return "I am a tool with weight \(weight) and length \(length)."
    }
    
    func terseDescription() -> String {
        return "I weigh \(weight) and am \(length) long"
    }
}

@infix func == (left: Tool, right: Tool) -> Bool {
    return (left.weight == right.weight && left.length == right.length)
}