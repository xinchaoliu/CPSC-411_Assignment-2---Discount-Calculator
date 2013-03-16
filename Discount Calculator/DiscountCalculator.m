//
//  DiscountCalculator.m
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the implementation for DiscountCalculator model.
//                    It receives the values from the ViewController and
//                    compute the price result and return.

#import "DiscountCalculator.h"

@implementation DiscountCalculator

// First apply the discount, then the additional discount. After that, take
// the dollars off, finally, plus the tax.
// For example: Original price is $100.
//              Discount is 20%, additional discount is 10%, $10 dollars off.
//              Tax is %8.75
// The discount price would be: 100 * 80% * 90% - 10 + (100 * 0.875)
- (double) calculateDiscountof:(NSString*)priceString
                  WithDiscount:(NSString*)discountString
         andAdditionalDiscount:(NSString*)addDiscString
                  andDollarOff:(NSString*)dollarsString
                       plusTax:(NSString*)taxString
{
    double price = [priceString doubleValue];
    double discount = [discountString doubleValue];
    double addDisc = [addDiscString doubleValue];
    double dollars = [dollarsString doubleValue];
    double tax = [taxString doubleValue];
    double discountPrice;
    double taxAmount;
    taxAmount = price * (tax / 100);
    discountPrice = price * (1 - discount / 100) * (1 - addDisc / 100)
                        - dollars + taxAmount;
    // If the discount price reaches 0, then only needs to pay for tax.
    if (discountPrice < 0)
        discountPrice = taxAmount;
    return discountPrice;
}

// The original price is the price plus the tax
- (double) calculateOriginalPriceof:(NSString*)priceString
                            plusTax:(NSString*)taxString
{
    double price = [priceString doubleValue];
    double tax = [taxString doubleValue];
    return price + price * (tax / 100);
}

@end
