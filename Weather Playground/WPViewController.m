//
//  WPViewController.m
//  Weather Playground
//
//  Created by Joshua Howland on 6/17/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WPViewController.h"

@interface WPViewController ()
@property (weak, nonatomic) IBOutlet UITextField *searchField;

@property (weak, nonatomic) IBOutlet UILabel *locationName;



@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)search:(id)sender {
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
