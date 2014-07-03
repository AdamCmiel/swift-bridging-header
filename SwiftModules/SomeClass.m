//
//  SomeClass.m
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//

#import "SomeClass.h"
#import "SwiftModules-Bridging-Header.h"

@implementation SomeClass

- (id)init
{
    return [self initWithLength:@45];
}

- (id)initWithLength:(NSNumber *)length
{
    self = [super init];
    self.length = length;
    return self;
}

- (NSNumber*)reportLength
{
    return self.length;
}

- (Tool*)getTool
{
    return self.tool;
}

+ (Tool*)talkAboutTool:(Tool*)tool
{
    return tool;
}

@end
