//
//  ARButtonBlock.m
//  ButtonBlock
//
//  Created by Alejandro Rupérez on 30/01/14.
//  Copyright (c) 2014 Alejandro Rupérez. All rights reserved.
//

#import "ARButtonBlock.h"

@implementation ARButtonBlock

@synthesize touchUpInsideBlock = _touchUpInsideBlock;

- (void)setTouchUpInsideBlock:(ARButtonTouchUpInsideBlock)touchUpInsideBlock
{
    _touchUpInsideBlock = [touchUpInsideBlock copy];
    if ([[self actionsForTarget:self forControlEvent:UIControlEventTouchUpInside] count] > 0)
    {
        [self removeTarget:self action:@selector(performTouchUpInsideBlock) forControlEvents:UIControlEventTouchUpInside];
    }
    [self addTarget:self action:@selector(performTouchUpInsideBlock) forControlEvents:UIControlEventTouchUpInside];
}

- (void)performTouchUpInsideBlock
{
    if (self.touchUpInsideBlock)
    {
        self.touchUpInsideBlock(self);
    }
}

@end
