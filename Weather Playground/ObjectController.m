//
//  ObjectController.m
//  Weather Playground
//
//  Created by Julien Guanzon on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ObjectController.h"

@implementation ObjectController
+ (ObjectController *)sharedInstance {
    static ObjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [ObjectController new];
    });
    return sharedInstance;
}
@end
