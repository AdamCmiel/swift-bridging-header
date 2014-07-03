//
//  SomeClass.m
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//

#import "SomeClass.h"
#import "SwiftModules-Swift.h"

@implementation SomeClass

- (id)init
{
    //
    // Define parameters for default Tool constructor
    //
    NSInteger hammerWeight = 23;
    NSInteger hammerLength = 14;
    
    //
    // Define parameters for default self constructor
    //
    Tool* hammer = [[Tool alloc] initWithWeight:hammerWeight length:hammerLength];
    NSNumber* length = @45;
    
    //
    // Return the correct init method
    //
    return [self initWithTool:hammer length:length];
}

- (id)initWithLength:(NSNumber *)length
{
    self = [super init];
    self.length = length;
    return self;
}

- (id)initWithTool:(Tool*)tool
{
    self = [super init];
    self.tool = tool;
    return self;
}

- (id)initWithTool:(Tool *)tool length:(NSNumber *)length
{
    self = [super init];
    self.tool = tool;
    self.length = length;
    return self;
}

- (NSNumber*)reportLength
{
    //
    // Return the property length, an instance of NSNumber*
    //
    return self.length;
}

- (Tool*)getTool
{
    //
    // Return the property tool, an instance of the (swift)
    // Tool class
    //
    return self.tool;
}

+ (NSString*)talkAboutTool:(Tool*)tool
{
    //
    // Call the swift method description from the tool class which
    // returns an instance of String, cast to NSString*
    //
    NSString* toolDescription = [tool description];
    
    //
    // Log that NSString*
    //
    NSLog(@"About this tool: %@", toolDescription);
    
    //
    // Return the pointer to NSString, which is cast to String in
    // main.swift
    //
    return toolDescription;
}

@end
