//
//  ThirdViewiPadController.h
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewiPadController : UIViewController
{
    IBOutlet UILabel *topic;
    IBOutlet UILabel *buffet;
    IBOutlet UILabel *setmeal;
    IBOutlet UILabel *topic2;
}
-(IBAction)buffetClick:(id)sender;
-(IBAction)setMealClick:(id)sender;

@end
