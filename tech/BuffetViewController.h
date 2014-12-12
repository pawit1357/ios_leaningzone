//
//  BuffetViewController.h
//  tech
//
//  Created by ShinPleZ on 9/14/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

@interface BuffetViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UILabel *topic;
    IBOutlet UILabel *topic2;
    IBOutlet UITableView *table;
    NSArray *dataTable;
    NSArray *dataImage;
    NSArray *dataVDO;
}
-(IBAction)back:(id)sender;
@end
