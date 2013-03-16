//
//  QuartzView.h
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the QuartzView's interface. This view present
//                      the graphic data for the price calculated from the
//                      first view.

#import <UIKit/UIKit.h>

@interface QuartzView : UIView

// Two doubles to hold the price results.
@property (nonatomic) double originalPrice;
@property (nonatomic) double discountPrice;

@end
