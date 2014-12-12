//
//  MenuCell_iPad.m
//  LearningZone
//
//  Created by ShinPleZ on 11/10/2556 BE.
//  Copyright (c) 2556 ShinPleZ. All rights reserved.
//

#import "MenuCell_iPad.h"

@implementation MenuCell_iPad
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
