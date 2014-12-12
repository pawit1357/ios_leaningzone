//
//  vdoCustomCell.h
//  tech
//
//  Created by ShinPleZ on 9/30/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface vdoCustomCell : UITableViewCell
{
    IBOutlet UIImageView *vdoBG;
    IBOutlet UIImageView *playVdo;
    IBOutlet UILabel *nameVdo;
}
@property (nonatomic ,retain)IBOutlet UIImageView *vdoBG;
@property (nonatomic ,retain)IBOutlet UIImageView *playVdo;
@property (nonatomic ,retain)IBOutlet UILabel *nameVdo;

@end
