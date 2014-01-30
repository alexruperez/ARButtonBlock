//
//  ARViewController.m
//  ButtonBlock
//
//  Created by Alejandro Rupérez on 30/01/14.
//  Copyright (c) 2014 Alejandro Rupérez. All rights reserved.
//

#import "ARViewController.h"

#import "ARButtonBlock.h"

@interface ARViewController ()

@property (weak, nonatomic) IBOutlet ARButtonBlock *button;

@end

@implementation ARViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *string = @"Touched!";

	[self.button setTouchUpInsideBlock:^{
        [[[UIAlertView alloc] initWithTitle:string message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }];
}

@end
