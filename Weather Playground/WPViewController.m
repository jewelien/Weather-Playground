//
//  WPViewController.m
//  Weather Playground
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WPViewController.h"
#import "ObjectController.h"
#import "Weather.h"

@interface WPViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *searchField;

@property (weak, nonatomic) IBOutlet UILabel *locationName;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *weatherMainLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@property (strong, nonatomic) Weather *weather;

@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)search:(id)sender {
    NSString *name = [self.searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [[ObjectController sharedInstance] getWeatherWithName:name completion:^(Weather *weather) {
        
        self.locationName.text = weather.locationName;
        self.weatherMainLabel.text = weather.weatherMain;
        self.descriptionLabel.text = weather.weatherDescription;
        self.tempLabel.text = [[ObjectController sharedInstance] kelvinToFar:weather.weatherTemp];
        
        self.iconImageView.image = weather.weatherIcon;
    }];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
