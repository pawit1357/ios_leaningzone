//
//  endGameiPadViewController.h
//  LearningZone
//
//  Created by ShinPleZ on 11/10/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface endGameiPadViewController : UIViewController
{
    IBOutlet UILabel *topic;
    IBOutlet UILabel *scoreLable;
    IBOutlet UIImageView *grade;
    IBOutlet UILabel *topic2;
    NSTimer *timer;
    NSString *SetScore;
}
-(void)initScore:(NSString*)score;
-(IBAction)back:(id)sender;

@end
