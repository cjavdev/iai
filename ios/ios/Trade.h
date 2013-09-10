//
//  Trade.h
//  ios
//
//  Created by w1zeman1p on 9/9/13.
//  Copyright (c) 2013 InsiderAI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Trade : NSObject
@property (weak, nonatomic) IBOutlet UIImageView *chart;
@property (weak, nonatomic) IBOutlet UILabel *ticker;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *tradeVolume;
@property (weak, nonatomic) IBOutlet UILabel *holdingsChange;
@end
