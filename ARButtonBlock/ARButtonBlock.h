//
//  ARButtonBlock.h
//  ButtonBlock
//
//  Created by Alejandro Rupérez on 30/01/14.
//  Copyright (c) 2014 Alejandro Rupérez. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ARButtonBlock;

typedef void(^ARButtonTouchUpInsideBlock)(ARButtonBlock *button);

@interface ARButtonBlock : UIButton

@property (copy, nonatomic) ARButtonTouchUpInsideBlock touchUpInsideBlock;

- (void)setTouchUpInsideBlock:(ARButtonTouchUpInsideBlock)touchUpInsideBlock;

- (void)performTouchUpInsideBlock;

@end
