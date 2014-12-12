//
//  SecondViewiPadController.m
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "SecondViewiPadController.h"
#import "subViewiPad.h"

@interface SecondViewiPadController ()

@end

@implementation SecondViewiPadController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"article_iPad.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"article_over_iPad.png"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btn1:(id)sender
{
    [self gotoSubView:0];
}
-(IBAction)btn2:(id)sender
{
    [self gotoSubView:1];
}
-(void)gotoSubView:(int)sum
{
    subViewiPad *subView = [[subViewiPad alloc] initWithNibName:@"subViewiPad" bundle:nil];
    [subView initView:sum];
    [self.navigationController pushViewController:subView animated:YES];
}
@end
