//
//  startGameiPadViewController.m
//  LearningZone
//
//  Created by ShinPleZ on 11/17/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "startGameiPadViewController.h"
#import "FourViewiPadController.h"

@interface startGameiPadViewController ()

@end

@implementation startGameiPadViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"game_iPad.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"game_over_iPad.png"]];
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
    FourViewiPadController *game = [[FourViewiPadController alloc] initWithNibName:@"FourViewiPadController" bundle:nil];
    [self.navigationController pushViewController:game animated:YES];
}
@end
