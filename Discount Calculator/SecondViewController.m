//
//  SecondViewController.m
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the SecondViewController's implementation.
//                      It controls the second page of view. Simplly it pass the
//                      two value get from the first view controller and give
//                      them to the QuartzView.

#import "SecondViewController.h"

@interface SecondViewController ()


@end

@implementation SecondViewController

@synthesize originalPrice;
@synthesize discountPrice;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Passing the two value get from first View Controller to the QuartzView
    ((QuartzView*)self.view).originalPrice = originalPrice;
    ((QuartzView*)self.view).discountPrice = discountPrice;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Use the gesture recongnizer to back to the previous view
-(IBAction)swipeinSecondView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}

@end
