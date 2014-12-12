//
//  subView1.h
//  tech
//
//  Created by ShinPleZ on 9/16/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface subView1 : UIViewController<UITableViewDataSource,UITableViewDelegate>
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
