//
//  SecondViewController.h
//  tech
//
//  Created by ShinPleZ on 7/27/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    IBOutlet UITableView *table;
    IBOutlet UILabel *topicLabel;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label3;
    IBOutlet UILabel *topic2;
    
    //NSArray *dataTable;
}
-(IBAction)btn1:(id)sender;
-(IBAction)btn2:(id)sender;
-(IBAction)btn3:(id)sender;
-(void)gotoSubView:(int)sum;
@end
