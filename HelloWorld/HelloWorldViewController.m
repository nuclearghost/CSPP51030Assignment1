//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Mark Meyer on 1/18/14.
//  Copyright (c) 2014 Mark Meyer. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

@synthesize userName = _userName;

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

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }

    NSArray *helloArray = @[@"Hello", @"Hallo", @"Hola", @"God dag", @"Ciao",
                            @"Salve", @"Salut"];
    uint32_t rand = arc4random_uniform([helloArray count]);
    NSString *randomHello = [helloArray objectAtIndex:rand];
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"%@ %@!",
                          randomHello, nameString];
    
    self.label.text = greeting;
}

- (BOOL) textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [self changeGreeting:NULL];
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
