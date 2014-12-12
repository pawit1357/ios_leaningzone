//
//  endGameViewController.m
//  tech
//
//  Created by ShinPleZ on 9/14/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "endGameViewController.h"
#import "startGameViewController.h"

@interface endGameViewController ()

@end

@implementation endGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [topic setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
    [topic2 setFont:[UIFont fontWithName:@"Quark-Light" size:20]];
    [scoreLable setFont:[UIFont fontWithName:@"Quark-Bold" size:34]];
    if ([SetScore intValue] < 5)
    {
        [grade setImage:[UIImage imageNamed:@"try_en.png"]];
    }
    [scoreLable setText:SetScore];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)initScore:(NSString*)score
{
    NSLog(@"score = %@",score);
    SetScore = score;
    
}

-(IBAction)back:(id)sender
{
    //[self.navigationController popViewControllerAnimated:YES];
    startGameViewController *start = [[startGameViewController alloc] initWithNibName:@"startGameViewController" bundle:nil];
    [self.navigationController pushViewController:start animated:YES];
    
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
@end
