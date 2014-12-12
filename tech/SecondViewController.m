//
//  SecondViewController.m
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomCell.h"
#import "subView1.h"
#import "AppDelegate.h"
#import "DetialsView.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //self.title = NSLocalizedString(@"Second", @"Second");
        //self.tabBarItem.image = [UIImage imageNamed:@"second"];
        //self.tabBarItem.image = [UIImage imageNamed:@"article_normal.png"];
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"article_overNew.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"articleNew.png"]];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //dataTable = [[NSArray alloc] initWithObjects:@"มารยาทสังคม", @"มารยาทการรับประทานอาหารแบบสากล", @"มารยาทในการรับประทานอาหาร", nil];
    [topicLabel setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
    [label1 setFont:[UIFont fontWithName:@"Quark-Light" size:16]];
    [label2 setFont:[UIFont fontWithName:@"Quark-Light" size:16]];
    label2.numberOfLines = 2;
    [label3 setFont:[UIFont fontWithName:@"Quark-Light" size:16]];
    [topic2 setFont:[UIFont fontWithName:@"Quark-Light" size:16]];
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
-(IBAction)btn3:(id)sender
{
    DetialsView *sView = [[DetialsView alloc] initWithNibName:@"DetialsView" bundle:nil];
    [sView initData:@"Table manner tips" with:@"3-1" ];
    [self.navigationController pushViewController:sView animated:YES];
}
-(void)gotoSubView:(int)sum
{
    subView1 *subView = [[subView1 alloc] initWithNibName:@"subView1" bundle:nil];
    [subView initView:sum];
    [self.navigationController pushViewController:subView animated:YES];
}
/*
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
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    subView1 *subView = [[subView1 alloc] initWithNibName:@"subView1" bundle:nil];
    [subView initView:indexPath.row];
    [self.navigationController pushViewController:subView animated:YES];
        
}
*/
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
@end
