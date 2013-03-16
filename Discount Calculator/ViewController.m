//
//  ViewController.m
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the ViewController's implementation. It controls
//                      the first page of view. Collect all data from user, and
//                      send them to the calculator model for result, then
//                      display. Also, ViewController will pass two result
//                      values to the SecondViewController for Graphic display.

#import "ViewController.h"
#import "DiscountCalculator.h"
#import "SecondViewController.h"

@interface ViewController ()

// The calculator model
@property (strong, nonatomic) DiscountCalculator *discountCal;
// This holds the original Price calculated by model
@property (nonatomic) double originalPrice;
// This is the discount price
@property (nonatomic) double discountPrice;

@end

@implementation ViewController

@synthesize discountCal;
@synthesize originalPrice;
@synthesize discountPrice;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Rewrite to initialize calculator model
- (DiscountCalculator *)discountCal {
    if (!discountCal)
        discountCal = [[DiscountCalculator alloc] init];
    return discountCal;
}

// Touch any place in the background to hide the keyboard
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    UIView *view = (UIView *)[touch view];
    if (view == self.view) {
        [self.tfPrice resignFirstResponder];
        [self.tfDollars resignFirstResponder];
        [self.tfDiscount resignFirstResponder];
        [self.tfAddDisc resignFirstResponder];
        [self.tfTax resignFirstResponder];
    }
    
}

// When user pressd the calculate button
- (IBAction)calPressed:(id)sender {
    // If not input the price, then show a message
    if ([_tfPrice.text length] == 0) {
        self.tfOriginalPrice.text = @"Please input the price!";
    }
    else {
        // Use calculate model to compute the original price.
        originalPrice =
            [self.discountCal calculateOriginalPriceof:_tfPrice.text
                                               plusTax:_tfTax.text];
        // Change the textfield text to show the result
        self.tfOriginalPrice.text = 
            [NSString stringWithFormat:@"Orignal Price: $%.2f",originalPrice];
        // Use the model to compute the discount price.
        discountPrice =
            [self.discountCal calculateDiscountof:_tfPrice.text
                                     WithDiscount:_tfDiscount.text
                            andAdditionalDiscount: _tfAddDisc.text
                                     andDollarOff: _tfDollars.text
                                          plusTax: _tfTax.text];
        // show the result get from the model
        self.tfDiscountPrice.text =
            [NSString stringWithFormat:@"Discount Price: $%.2f",discountPrice];
    }
}

// The prepareForSeque method is used to passing data from the first view
// controller to the second view controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SecondViewController *secondVC= segue.destinationViewController;
    // Send the two price value to the second view controller
    secondVC.originalPrice = originalPrice;
    secondVC.discountPrice = discountPrice;
}

@end
