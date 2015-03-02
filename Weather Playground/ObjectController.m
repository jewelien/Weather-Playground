//
//  ObjectController.m
//  Weather Playground
//
//  Created by Julien Guanzon on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ObjectController.h"
#import "NetworkController.h"
#import <AFNetworking/AFHTTPRequestOperation.h>

@implementation ObjectController
+ (ObjectController *)sharedInstance {
    static ObjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [ObjectController new];
    });
    return sharedInstance;
}

- (void)getWeatherWithName:(NSString *)name completion:(void (^) (Weather *weather))completion {
    
    NSString *path = [NSString stringWithFormat:@"weather?q=%@", name];
    
    [[NetworkController api] GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSArray *responseWeather = responseObject;
        
        NSMutableArray *weather = [NSMutableArray new];
        for (NSDictionary *dictionary in responseWeather) {
            [weather addObject:[Weather alloc]initWithDictionary:dictionary]];
        }
    }
    
}


@end
