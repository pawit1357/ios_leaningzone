//
//  VideoCell_iPad.h
//  LearningZone
//
//  Created by ShinPleZ on 11/10/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VideoCell_iPad : UITableViewCell
{
    IBOutlet UIImageView *vdoBG;
    IBOutlet UILabel *nameVdo;
}
@property (nonatomic ,retain)IBOutlet UIImageView *vdoBG;
@property (nonatomic ,retain)IBOutlet UILabel *nameVdo;
@end
