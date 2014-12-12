//
//  FirstViewController.m
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "FirstViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //self.title = NSLocalizedString(@"First", @"First");
        //self.tabBarItem.image = [UIImage imageNamed:@"first"];
//        self.tabBarItem.image = [UIImage imageNamed:@"home_normal"];
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"home_overNew.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"homeNew.png"]];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    [topicLable setFont:[UIFont fontWithName:@"Quark-Light" size:25]];
    [lable1 setFont:[UIFont fontWithName:@"Quark-Light" size:22]];
    [txtView setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [lableTxt1 setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [lableTxt2 setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [lableTxt3 setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [lableTxt4 setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    [lableTxt5 setFont:[UIFont fontWithName:@"Quark-Light" size:15]];
    
//    for (NSString* family in [UIFont familyNames])
//    {
//        NSLog(@"%@", family);
//        
//        for (NSString* name in [UIFont fontNamesForFamilyName: family])
//        {
//            NSLog(@"  %@", name);
//        }
//    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}


@end
