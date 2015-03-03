//
//  Weather.m
//  Weather Playground
//
//  Created by Julien Guanzon on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Weather.h"


@implementation Weather

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.locationName = dictionary[@"name"];
        self.weatherMain = dictionary[@"weather"][0][@"main"];
        self.weatherDescription = dictionary[@"weather"][0][@"description"];
        self.weatherTemp = dictionary[@"main"][@"temp"];
        
        
        NSURL *imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://openweathermap.org/img/w/%@.png", dictionary[@"weather"][0][@"icon"]]];
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        self.weatherIcon = [UIImage imageWithData:imageData];

        
    }
    return self;
}

@end
