//
//  subView1.m
//  tech
//
//  Created by ShinPleZ on 9/16/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "subView1.h"
#import "CustomCell.h"
#import "DetialsView.h"
@interface subView1 ()

@end

@implementation subView1

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
    [topic setFont:[UIFont fontWithName:@"Quark-Light" size:16]];
    [topic setText:topicStr];
}
-(void)initView:(int)type
{
    if (type == 0)
    {
        typeSum = type;
        topicStr = @"How to eat mannerly in a buffet style.";
        dataTable = [[NSArray alloc] initWithObjects:@"Rule #1", @"Rule #2", @"Rule #3", @"Rule #4", @"Rule #5", @"Rule #6", @"Tips for eating buffet", nil];
        
        NSString *t1 = @"4-1";
        NSString *t2 = @"4-2";
        NSString *t3 = @"4-3";
        NSString *t4 = @"4-4";
        NSString *t5 = @"4-5";
        NSString *t6 = @"4-6";
        NSString *t7 = @"4-7";

        
        
        dataDetails = [[NSArray alloc] initWithObjects:t1, t2, t3, t4, t5, t6, t7,nil];
        
    }
    else if(type == 1)
    {
        typeSum = type;
        topicStr = @"How to eat correctly on set menu.";
        dataTable = [[NSArray alloc] initWithObjects:@"How to eat correctly on set menu.", @"What is set menu?", @"Rule #1", @"Rule #2", @"Rule #3", @"Rule #4", @"Rule #5", @"Rule #6", @"Rule #7", @"Rule #8", nil];
        
        NSString *t1 = @"5-1";
        NSString *t2 = @"5-2";
        NSString *t3 = @"5-3";
        NSString *t4 = @"5-4";
        NSString *t5 = @"5-5";
        NSString *t6 = @"5-6";
        NSString *t7 = @"5-7";
        NSString *t8 = @"5-8";
        NSString *t9 = @"5-9";
        NSString *t10 = @"5-10";
        
        
        dataDetails = [[NSArray alloc] initWithObjects:t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, nil];
        
    }
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
    
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    cell.name.text = [dataTable objectAtIndex:indexPath.row];
    [cell.name setFont:[UIFont fontWithName:@"Quark-Light" size:16]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetialsView *sView = [[DetialsView alloc] initWithNibName:@"DetialsView" bundle:nil];
    [sView initData:[dataTable objectAtIndex:indexPath.row] with:[dataDetails objectAtIndex:indexPath.row]];
    [self.navigationController pushViewController:sView animated:YES];
    
}
-(IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
@end
