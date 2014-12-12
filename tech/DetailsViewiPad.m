//
//  DetailsViewiPad.m
//  LearningZone
//
//  Created by ShinPleZ on 11/10/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "DetailsViewiPad.h"

@interface DetailsViewiPad ()

@end

@implementation DetailsViewiPad

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
    webview.delegate = self;
    NSString *indexPath = [[NSBundle mainBundle] pathForResource:nameFile ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:indexPath];
    NSLog(@"url = %@",url);
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [webview loadRequest:request];
    [topicName setText:nameTopic];
    [topicName setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)initData:(NSString *)tName with:(NSString *)tView
{
    nameFile = tView;
    nameTopic = tName;
}
-(IBAction)back:(id)sender
{
    //[self.view removeFromSuperview];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
