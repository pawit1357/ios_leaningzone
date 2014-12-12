//
//  FourViewiPadController.h
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "endGameiPadViewController.h"

@interface FourViewiPadController : UIViewController
{
    IBOutlet UILabel *topicTabbar;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *topic;
    IBOutlet UILabel *num;
    IBOutlet UILabel *score;
    IBOutlet UIImageView *image;
    IBOutlet UILabel *topic2;
    IBOutlet UILabel *answerLabel1;
    IBOutlet UILabel *answerLabel2;
    NSArray *answerArr;
    NSArray *imageArr;
    NSArray *topicArr;
    int count;
    int scoreInt;
    NSTimer *timer;
    endGameiPadViewController *endView;
    NSArray *answer1;
    NSArray *answer2;
}
-(IBAction)selectTrue:(id)sender;
-(IBAction)selectFalse:(id)sender;

-(void)checkSum:(int)sum;

@end
