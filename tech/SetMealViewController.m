//
//  SetMealViewController.m
//  tech
//
//  Created by ShinPleZ on 9/14/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "SetMealViewController.h"
#import "CustomCell.h"
#import "vdoCustomCell.h"
@interface SetMealViewController ()

@end

@implementation SetMealViewController

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
    dataTable = [[NSArray alloc] initWithObjects:@"Introduction", @"What is set Meal ?", @"Rule #1", @"Rule #2", @"Rule #3", @"Rule #4", @"Rule #5", @"Rule #6", @"Rule #7", @"Rule #8", nil];
    
    dataVDO = [[NSArray alloc] initWithObjects:@"meal_shot1", @"meal_shot2", @"meal_shot7", @"meal_shot8", @"meal_shot9", @"meal_shot10", @"meal_shot11", @"meal_shot12", @"meal_shot13", @"meal_shot14",   nil];
    
    dataImage = [[NSArray alloc] initWithObjects:@"vdo2_1", @"vdo2_2", @"vdo2_7", @"vdo2_8", @"vdo2_9", @"vdo2_10", @"vdo2_11", @"vdo2_12", @"vdo2_13",@"vdo2_14", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"dataTable %d",[dataTable count]);
    return [dataTable count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"CustomCell";
    
    vdoCustomCell *cell = (vdoCustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"vdoCustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell.vdoBG setImage:[UIImage imageNamed:[dataImage objectAtIndex:indexPath.row]]];
    [cell.nameVdo setText:[dataTable objectAtIndex:indexPath.row]];
    [cell.nameVdo setFont:[UIFont fontWithName:@"Quark-Light" size:20]];
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 235;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *filename = [NSString stringWithFormat:@"%@",[dataVDO objectAtIndex:indexPath.row]];
    NSLog(@"filename = %@",filename);
    NSString *videoPath = [[NSBundle mainBundle] pathForResource:filename ofType:@"mp4"];
    NSURL *streamURL = [NSURL fileURLWithPath:videoPath];
    NSLog(@"streamURL = %@",streamURL);
    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL: streamURL];
    [player prepareToPlay];
    //player.view.frame = CGRectMake(0, 0, cell.vdoPlayer.frame.size.width, cell.vdoPlayer.frame.size.height);
    [self.view addSubview: player.view];
    [player setFullscreen:YES animated:YES];
}
-(IBAction)back:(id)sender
{
    //[self.view removeFromSuperview];
    [self.navigationController popViewControllerAnimated:YES];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
@end
