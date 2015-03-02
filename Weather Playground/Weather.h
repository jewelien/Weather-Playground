//
//  Weather.h
//  Weather Playground
//
//  Created by Julien Guanzon on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

@property (strong , nonatomic) NSString *locationName;
@property (strong, nonatomic) NSString *weatherMain;
@property (strong, nonatomic) NSString *weatherDescription;
@property (strong, nonatomic) UIImage *weatherIcon;
@property (assign, nonatomic) NSNumber *weatherTemp;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
