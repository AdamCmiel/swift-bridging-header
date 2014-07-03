//
//  SomeClass.h
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//

@class Tool;
#import <Foundation/Foundation.h>
#import "SwiftModules-Bridging-Header.h"


@interface SomeClass : NSObject
@property (strong, nonatomic) NSNumber* length;
@property (strong, nonatomic) Tool* tool;
- (id)init;
- (id)initWithLength:(NSNumber*)length;
- (NSNumber*)reportLength;
- (Tool*)getTool;
+ (Tool*)talkAboutTool:(Tool *)tool;
@end
