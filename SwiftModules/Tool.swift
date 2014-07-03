//
//  Tool.swift
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//
//  class Tool extends NSObject and conforms to
//  the Equatable protocol
//
@objc class Tool: NSObject, Equatable {
    //
    // Instance Variables?
    //
    var weight: Int
    var length: Int
    
    //
    // initWithWeight
    //
    init(weight: Int) {
        self.weight = weight
        self.length = 1
    }
    
    //
    // initWithWeight:length
    //
    init(weight: Int, length: Int) {
        self.weight = weight
        self.length = length
    }
    
    //
    // Description returns a string spelling out the properties
    // of the Tool instance
    //
    func description() -> String {
        return "I am a tool with weight \(weight) and length \(length)."
    }
    
    //
    // Provides a more terse description
    //
    func terseDescription() -> String {
        return "I weigh \(weight) and am \(length) long"
    }
}

//
// Override the equality operator for object of type Tool
// Returns true if the weight and length of the objects are
// both identical
//
@infix func == (left: Tool, right: Tool) -> Bool {
    return (left.weight == right.weight && left.length == right.length)
}