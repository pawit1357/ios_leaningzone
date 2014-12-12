//
//  subViewiPad.h
//  LearningZone
//
//  Created by ShinPleZ on 11/10/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface subViewiPad : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *table;
    IBOutlet UILabel *topic;
    NSArray *dataTable;
    NSArray *dataDetails;
    NSString *topicStr;
    int typeSum;
}
-(void)initView:(int)type;
-(IBAction)back:(id)sender;


@end
