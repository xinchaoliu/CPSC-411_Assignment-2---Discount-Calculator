//
//  DiscountCalculator.h
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the interface for DiscountCalculator model. It
//                      contains the compute methods for the model.

#import <Foundation/Foundation.h>

@interface DiscountCalculator : NSObject

- (double) calculateDiscountof:(NSString*)priceString
                  WithDiscount:(NSString*)discountString
         andAdditionalDiscount:(NSString*)addDiscString
                  andDollarOff:(NSString*)dollarsString
                       plusTax:(NSString*)taxString;

- (double) calculateOriginalPriceof:(NSString*)priceString
                            plusTax:(NSString*)taxString;

@end
