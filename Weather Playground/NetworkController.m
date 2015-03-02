//
//  NetworkController.m
//  Weather Playground
//
//  Created by Julien Guanzon on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"
#import <AFNetworking/AFNetworking.h>

@implementation NetworkController

+ (AFHTTPSessionManager *)sharedInstance {
    static AFHTTPSessionManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AFHTTPSessionManager alloc] initWithBaseURL: [NSURL URLWithString: @"http://api.openweathermap.org/data/2.5/"]];
        sharedInstance.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    return sharedInstance;
}
@end
