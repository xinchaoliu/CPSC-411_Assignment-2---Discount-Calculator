//
//  ViewController.h
//  Discount Calculator
//
//  Created by Xinchao Liu on 3/15/13.
//  Copyright (c) 2013 Xinchao Liu. All rights reserved.
//
//  Email: leo_liu@csu.fullerton.edu
//
//  Due: 23:59, Mar.15, 2013
//
//  File Description: This is the ViewController's interface. Here's all the
//                    connections to the view.

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
// textField for Price
@property (weak, nonatomic) IBOutlet UITextField *tfPrice;
// textField for Dollar off
@property (weak, nonatomic) IBOutlet UITextField *tfDollars;
// textField for discount
@property (weak, nonatomic) IBOutlet UITextField *tfDiscount;
// textField for additional discount
@property (weak, nonatomic) IBOutlet UITextField *tfAddDisc;
// textField for Tax
@property (weak, nonatomic) IBOutlet UITextField *tfTax;
// textField to show the original price result 
@property (weak, nonatomic) IBOutlet UILabel *tfOriginalPrice;
// textField to show the discount price result
@property (weak, nonatomic) IBOutlet UILabel *tfDiscountPrice;
// The associated action for the calculate button
- (IBAction)calPressed:(id)sender;

@end
