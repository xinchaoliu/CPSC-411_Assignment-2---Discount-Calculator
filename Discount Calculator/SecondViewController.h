//
//  SecondViewController.h
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the SecondViewController's interface. Here's all
//                      the connections to the view.

#import <UIKit/UIKit.h>
#import "QuartzView.h"

@interface SecondViewController : UIViewController

// Swipe Gesture Recongizer for back to the previous view
-(IBAction)swipeinSecondView:(id)sender;

// ViewController will pass these two values through seque 
@property (nonatomic) double originalPrice;
@property (nonatomic) double discountPrice;

@end
