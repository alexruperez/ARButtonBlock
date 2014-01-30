//
//  ARViewController.m
//  ButtonBlock
//
//  Created by Alejandro Rupérez on 30/01/14.
//  Copyright (c) 2014 Alejandro Rupérez. All rights reserved.
//

#import "ARViewController.h"

#import "ARButtonBlock.h"

@interface ARViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet ARButtonBlock *button;
@property (strong, nonatomic) NSMutableArray *sections;

@end

@implementation ARViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // SIMPLE EXAMPLE - SINGLE BUTTON
    NSString *string = @"Touched!";

	[self.button setTouchUpInsideBlock:^{
        [[[UIAlertView alloc] initWithTitle:string message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }];
    
    // COMPLEX EXAMPLE - COLLAPSABLE TABLE
    self.sections = [@[ @YES, @YES, @YES ] mutableCopy];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.sections count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.sections[section] isEqualToNumber:@NO] ? 0 : [self.sections count];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    ARButtonBlock *headerButton = [[ARButtonBlock alloc] init];
    [headerButton setTitle:[NSString stringWithFormat:@"Section %d Header Collapse Button", (int)section] forState:UIControlStateNormal];
    [headerButton setBackgroundColor:[UIColor colorWithRed:0.0f green:0.478431f blue:1.0f alpha:1.0f]];
    [headerButton setTouchUpInsideBlock:^{
        self.sections[section] = [NSNumber numberWithBool:![self.sections[section] boolValue]];
        [tableView reloadData];
    }];
    return headerButton;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [cell.textLabel setText:[NSString stringWithFormat:@"Section %d Cell %d", (int)indexPath.section, (int)indexPath.row]];
    
    return cell;
}

@end
