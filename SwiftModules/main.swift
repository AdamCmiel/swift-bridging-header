//
//  main.swift
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//

import Foundation

//
// Create a new instance of (swift) class Tool
//
let hammer = Tool(weight: 45)

//
// Create a new instance of (objc) class SomeClass
//
let someObject = SomeClass(tool: hammer, length: 23)

//
// Call an objc method in swift
//
let objectLength = someObject.reportLength()

//
// Log the SomeClass instance in swift
//
println(objectLength)

//
// Create another instance of the Tool class
//
let otherHammer = Tool(weight: 45);

//
// Log in swift a method call of the swift class
//
println(otherHammer.terseDescription())

//
// Assign a property of the (objc) SomeClass class instance with an instance of the (swift) Tool class

someObject.tool = otherHammer

//
// Call an objc method that takes as a parameter a pointer to a swift class instance and returns a pointer to NSString,
// which is converted to an instance of String
//
let hammerDescription = SomeClass.talkAboutTool(hammer)

//
// Log that string
//
println(hammerDescription);

//
// Use the overridden operator to return a boolean value
//
let equality = hammer == otherHammer

// 
// Print the result of that boolean
//
println(equality)