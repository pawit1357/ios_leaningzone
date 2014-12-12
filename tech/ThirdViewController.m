//
//  ThirdViewController.m
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "ThirdViewController.h"
#import "BuffetViewController.h"
#import "SetMealViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//        self.tabBarItem.image = [UIImage imageNamed:@"vdo_normal.png"];
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"vdo-overNew.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"vdoNew.png"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [topic setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
    [buffet setFont:[UIFont fontWithName:@"Quark-Light" size:22]];
    [setmeal setFont:[UIFont fontWithName:@"Quark-Light" size:22]];
    [topic2 setFont:[UIFont fontWithName:@"Quark-Light" size:20]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)buffetClick:(id)sender
{
    BuffetViewController *bfView = [[BuffetViewController alloc] initWithNibName:@"BuffetViewController" bundle:nil];
    //[self.view addSubview:bfView.view];
    [self.navigationController pushViewController:bfView animated:YES];
}
-(IBAction)setMealClick:(id)sender
{
    SetMealViewController *smView = [[SetMealViewController alloc] initWithNibName:@"SetMealViewController" bundle:nil];
    [self.navigationController pushViewController:smView animated:YES];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
@end
