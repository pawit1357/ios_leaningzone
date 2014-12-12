//
//  BuffetiPadViewController.m
//  LearningZone
//
//  Created by ShinPleZ on 11/10/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "BuffetiPadViewController.h"
#import "VideoCell_iPad.h"

@interface BuffetiPadViewController ()

@end

@implementation BuffetiPadViewController

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
    //[topic setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
    //[topic2 setFont:[UIFont fontWithName:@"Quark-Light" size:20]];
    
    
    dataTable = [[NSArray alloc] initWithObjects:@"Introduction",@"Rule #1", @"Rule #2", @"Rule #3", @"Rule #4", @"Rule #5", @"Rule #6", @"Rule #7", @"Rule #8", @"Rule #9", @"Rule #10", nil];
    
    dataVDO = [[NSArray alloc] initWithObjects:@"shot_begin", @"shot1", @"shot2", @"shot3", @"shot4", @"shot5", @"shot6", @"shot7", @"shot8", @"shot9", @"shot10", nil];
    
    dataImage = [[NSArray alloc] initWithObjects:@"vdo1_0", @"vdo1_1", @"vdo1_2", @"vdo1_3", @"vdo1_4", @"vdo1_5", @"vdo1_6", @"vdo1_7", @"vdo1_8", @"vdo1_9", @"vdo1_10", nil];
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
    
    VideoCell_iPad *cell = (VideoCell_iPad *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"VideoCell_iPad" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell.vdoBG setImage:[UIImage imageNamed:[dataImage objectAtIndex:indexPath.row]]];
    [cell.nameVdo setText:[dataTable objectAtIndex:indexPath.row]];
    //[cell.nameVdo setFont:[UIFont fontWithName:@"Quark-Light" size:20]];
    [cell setBackgroundColor:[UIColor clearColor]];
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 400;
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


@end
