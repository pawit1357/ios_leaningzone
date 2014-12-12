//
//  endGameViewController.h
//  tech
//
//  Created by ShinPleZ on 9/14/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface endGameViewController : UIViewController
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
