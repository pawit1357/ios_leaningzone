//
//  startGameViewController.m
//  LearningZone
//
//  Created by ShinPleZ on 11/17/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "startGameViewController.h"
#import "FourViewController.h"

@interface startGameViewController ()

@end

@implementation startGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"game_overNew.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"gameNew.png"]];
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
-(IBAction)startGame:(id)sender
{
    FourViewController *game = [[FourViewController alloc] initWithNibName:@"FourViewController" bundle:nil];
    [self.navigationController pushViewController:game animated:YES];
}
@end
