//
//  IAITradeCell.h
//  ios
//
//  Created by w1zeman1p on 9/9/13.
//  Copyright (c) 2013 InsiderAI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IAITradeDetailView.h"

@interface IAITradeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *chart;
@property (weak, nonatomic) IBOutlet UIView *detailsView;
@property (weak, nonatomic) IBOutlet UILabel *tickerLabel;
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@property (strong, nonatomic) NSString *ticker;
@end
