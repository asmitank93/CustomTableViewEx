//
//  MYTableViewCell.m
//  CustomTableViewEx
//
//  Created by Tops on 2/25/16.
//  Copyright (c) 2016 Tops. All rights reserved.
//

#import "MYTableViewCell.h"

@implementation MYTableViewCell
@synthesize img_vw,lbl_nm;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
