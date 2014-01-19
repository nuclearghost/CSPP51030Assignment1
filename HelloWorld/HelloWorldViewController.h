//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Mark Meyer on 1/18/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController<UITextFieldDelegate>

- (IBAction)changeGreeting:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (copy, nonatomic) NSString *userName;

@end
