//
//  ObjectController.h
//  Weather Playground
//
//  Created by Julien Guanzon on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weather.h"


@interface ObjectController : NSObject

+ (ObjectController *)sharedInstance;

- (void)getWeatherWithName:(NSString *)name completion:(void (^) (Weather *weather))completion;
- (NSString *)kelvinToFar:(NSString *)kelvinNumber;
@end
