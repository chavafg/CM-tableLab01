//
//  mainTableCell.h
//  CM-tableLab
//
//  Created by chava on 6/17/15.
//  Copyright (c) 2015 fuentess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainTableCell : UITableViewCell

//image
@property (strong, nonatomic) IBOutlet UIImageView *userImg;

//labels
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

@property (strong, nonatomic) IBOutlet UILabel *ageLabel;


@end
