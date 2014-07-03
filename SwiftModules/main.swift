//
//  main.swift
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//

import Foundation

let hammer = Tool(weight: 45)

let someObject = SomeClass()
let objectLength = someObject.reportLength()

println(objectLength)
someObject.tool = hammer

let otherHammer = SomeClass.talkAboutTool(hammer)

println(otherHammer.terseDescription())

let equality = hammer == otherHammer

println(equality)