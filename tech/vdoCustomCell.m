//
//  vdoCustomCell.m
//  tech
//
//  Created by ShinPleZ on 9/30/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "vdoCustomCell.h"

@implementation vdoCustomCell
@synthesize vdoBG,playVdo,nameVdo;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
