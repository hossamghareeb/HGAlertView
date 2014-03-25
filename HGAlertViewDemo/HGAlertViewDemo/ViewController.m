//
//  ViewController.m
//  HGAlertViewDemo
//
//  Created by Hossam on 3/25/14.
//  Copyright (c) 2014 Hossam. All rights reserved.
//

#import "ViewController.h"
#import "HGAlertView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    HGAlertView *alert = [[HGAlertView alloc] initWithTitle:@"Test" message:@"Choose action" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitlesArr:@[@"Yes", @"No"]];
    [alert showWithCompltionHandler:^(id alertView, int buttonIndex) {
       
        NSLog(@"clicked %d", buttonIndex);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
