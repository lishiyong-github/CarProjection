//
//  MyNewOrderCell.m
//  minglongyongche
//
//  Created by jiamanu on 2018/5/6.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import "MyNewOrderCell.h"

@implementation MyNewOrderCell

+ (CGFloat)heightWithItem:(RETableViewItem *)item tableViewManager:(RETableViewManager *)tableViewManager {
    return 160;
}

- (void)cellDidLoad {
    [super cellDidLoad];
    
    [self.contentView addSubview:self.topBackView];
    [self.contentView addSubview:self.timeLabel];
    [self.contentView addSubview:self.moneyLabel];
    
    [self.contentView addSubview:self.bottomBackView];
    [self.contentView addSubview:self.carImage];
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.feature1];
//    [self.contentView addSubview:self.feature2];
    
    [self.contentView addSubview:self.typeButton];
 
    [self setNeedsUpdateConstraints];
}

- (void)updateConstraints {
    if (!self.didSetupConstraints) {
        
//        self.topBackView autopin
        
        self.didSetupConstraints = YES;
    }
    [super updateConstraints];
}

- (UIView *)topBackView {
    if (!_topBackView) {
        _topBackView = [UIView newAutoLayoutView];
    }
    return _topBackView;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
