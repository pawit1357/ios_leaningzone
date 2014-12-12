//
//  ThirdViewiPadController.m
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "ThirdViewiPadController.h"
#import "BuffetiPadViewController.h"
#import "SetMealiPadViewController.h"

@interface ThirdViewiPadController ()

@end

@implementation ThirdViewiPadController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"vdo_iPad.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"vdo_over_iPad.png"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [topic setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
//    [buffet setFont:[UIFont fontWithName:@"Quark-Light" size:22]];
//    [setmeal setFont:[UIFont fontWithName:@"Quark-Light" size:22]];
//    [topic2 setFont:[UIFont fontWithName:@"Quark-Light" size:20]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)buffetClick:(id)sender
{
    BuffetiPadViewController *bfView = [[BuffetiPadViewController alloc] initWithNibName:@"BuffetiPadViewController" bundle:nil];
    //[self.view addSubview:bfView.view];
    [self.navigationController pushViewController:bfView animated:YES];
}
-(IBAction)setMealClick:(id)sender
{
    SetMealiPadViewController *smView = [[SetMealiPadViewController alloc] initWithNibName:@"SetMealiPadViewController" bundle:nil];
    [self.navigationController pushViewController:smView animated:YES];
}

@end
