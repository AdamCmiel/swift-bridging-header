//
//  SomeClass.h
//  SwiftModules
//
//  Created by Adam Cmiel on 7/2/14.
//  Copyright (c) 2014 adamcmiel. All rights reserved.
//

#import <Foundation/Foundation.h>

//
//  Forward declare the Tool class for use in the
//  interface, the entire Swift header will be
//  included in the implementation
//
@class Tool;

//
//  Class SomeClass extends NSObject
//
@interface SomeClass : NSObject
@property (strong, nonatomic) NSNumber* length;
@property (strong, nonatomic) Tool* tool;
- (id)init;

//
// Backup init method with only the length specified
//
- (id)initWithLength:(NSNumber*)length;

//
// Backup init method with only the tool specified
//
- (id)initWithTool:(Tool*)tool;

//
// Default init method with tool and length specified
//
- (id)initWithTool:(Tool*)tool length:(NSNumber*)length;


//
// Logs the length property and then returns
// the length property
//
- (NSNumber*)reportLength;

//
// Returns the Tool* tool property
//
- (Tool*)getTool;

//
// Takes a Tool*, passes the description method
// to that tool, then returns the NSString*
// returned by that method call.
//
+ (NSString*)talkAboutTool:(Tool*)tool;
@end
