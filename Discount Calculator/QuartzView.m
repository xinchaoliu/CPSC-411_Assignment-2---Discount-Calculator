//
//  QuartzView.m
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the QuartzView's implementation.
//                      Using the Quartz2D, draw graphics on the view to
//                      represent the compare of the prices.

#import "QuartzView.h"

@implementation QuartzView

@synthesize originalPrice;
@synthesize discountPrice;

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor grayColor];
		self.opaque = YES;
		self.clearsContextBeforeDrawing = YES;        
    }
    return self;
}

// Override drawRect to apply Quartz
- (void)drawRect:(CGRect)rect
{
    // Get current context
    CGContextRef context = UIGraphicsGetCurrentContext();
    // Set Stroke Color
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    // Set Stroke Width
    CGContextSetLineWidth(context, 2.0);
    
    // Draw original price rectangle
    CGRect priceRectangle = CGRectMake(50,50,100,350);
    CGContextAddRect(context, priceRectangle);
    CGContextStrokePath(context);
    // Fill with blue
    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextFillRect(context, priceRectangle);
    // Print price tag with red color
    CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
    NSString* originalPriceTag =
        [NSString stringWithFormat:@"$%.2f",originalPrice];
    [originalPriceTag drawAtPoint:CGPointMake(58,190)
                         withFont:[UIFont systemFontOfSize:22]];
    
    // Compute discount percentage
    double discountPercentage = 1 - discountPrice / originalPrice;
    double offRectHeight = 350 * discountPercentage;
    
    // Draw off price rectangle
    CGRect offRectangle = CGRectMake(170,50,100,offRectHeight);
    CGContextAddRect(context, offRectangle);
    CGContextStrokePath(context);
    // Fill with red
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillRect(context, offRectangle);
    // Print off price tag with green color
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    NSString* offPriceTag =
        [NSString stringWithFormat:@"$%.2f",originalPrice - discountPrice];
    [offPriceTag drawAtPoint:CGPointMake(178,30 + offRectHeight / 2)
                    withFont:[UIFont systemFontOfSize:22]];
    // Print percentage
    NSString* offPercentageTag =
    [NSString stringWithFormat:@"%.2f%%",discountPercentage * 100];
    [offPercentageTag drawAtPoint:CGPointMake(178,52 + offRectHeight / 2)
                    withFont:[UIFont systemFontOfSize:22]];

    
    // Draw discount price rectangle
    CGRect discountRectangle =
        CGRectMake(170,53 + offRectHeight,100,347 - offRectHeight);
    CGContextAddRect(context, discountRectangle);
    CGContextStrokePath(context);
    // Fill with orange
    CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
    CGContextFillRect(context, discountRectangle);
    // Print off price tag with green color
    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
    NSString* discountPriceTag =
    [NSString stringWithFormat:@"$%.2f",discountPrice];
    [discountPriceTag drawAtPoint:CGPointMake(178,210 + offRectHeight / 2)
                         withFont:[UIFont systemFontOfSize:22]];
    // Print percentage
    NSString* discountPercentageTag =
    [NSString stringWithFormat:@"%.2f%%",100 - discountPercentage * 100];
    [discountPercentageTag drawAtPoint:CGPointMake(178,232 + offRectHeight / 2)
                              withFont:[UIFont systemFontOfSize:22]];
}

@end
