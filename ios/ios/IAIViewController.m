//
//  IAIViewController.m
//  ios
//
//  Created by w1zeman1p on 9/9/13.
//  Copyright (c) 2013 InsiderAI. All rights reserved.

#import "IAIViewController.h"
#import "IAITradeCell.h"

@interface IAIViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *tradeArray;
@end

@implementation IAIViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tradeArray = @[@"AAPL",@"GOOG"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tradeArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *cellIdentifier = @"TradeCell";
    
    IAITradeCell *cell = (IAITradeCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //5.1 you do not need this if you have set SettingsCell as identifier in the storyboard (else you can remove the comments on this code)
    if (cell == nil) {
        cell = [[IAITradeCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                   reuseIdentifier:cellIdentifier];
    }
    
    //6
    NSString *trade = [self.tradeArray objectAtIndex:indexPath.row];
    
    //7
    [cell.chart initWithImage:[UIImage imageNamed:@"aapl.png"]];
    
    [cell.tickerLabel setText:trade];
    cell.testLabel.text = @"test";
    //[cell.detailTextLabel setText:@"via Codigator"];
    return cell;
}
@end
