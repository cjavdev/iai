//
//  IAITradeCell.m
//  ios
//
//  Created by w1zeman1p on 9/9/13.
//  Copyright (c) 2013 InsiderAI. All rights reserved.
//

#import "IAITradeCell.h"

@implementation IAITradeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect viewFrame = CGRectMake(0.0, 0.0,
                                      self.contentView.bounds.size.width,
                                      self.contentView.bounds.size.height);
        
        self.detailsView = [[IAITradeDetailView alloc] initWithFrame:viewFrame];
        
        [self.contentView addSubview:self.detailsView];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
