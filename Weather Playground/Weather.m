//
//  Weather.m
//  Weather Playground
//
//  Created by Julien Guanzon on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Weather.h"
static NSString * const locationKey = @"location";
static NSString * const weatherMainKey = @"weatherMain";
static NSString * const weatherDescriptionKey = @"weatherDescription";
static NSString * const weatherIconKey = @"weatherIcon";
static NSString * const weatherTempKey = @"weatherTemp";

@implementation Weather

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.locationName = dictionary[locationKey];
        self.weatherMain = dictionary[weatherMainKey];
        self.weatherDescription = dictionary[weatherDescriptionKey];
        self.weatherIcon = dictionary[weatherIconKey];
        self.weatherTemp = dictionary[weatherTempKey];
    }
    return self;
}

@end
