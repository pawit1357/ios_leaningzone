//
//  CustomCell.m
//  tech
//
//  Created by ShinPleZ on 8/16/56 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize name;
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
