//
//  MyTicketCell.m
//  minglongyongche
//
//  Created by jiamanu on 2018/5/4.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import "MyTicketCell.h"

@implementation MyTicketCell

+ (CGFloat)heightWithItem:(RETableViewItem *)item tableViewManager:(RETableViewManager *)tableViewManager {
    return 140;
}

- (void)cellDidLoad {
    [super cellDidLoad];
    
    self.separatorInset = MLSeparatorInset;
    self.backgroundColor = MLBackGroundColor;
    
    [self.contentView addSubview:self.backImageView];
    [self.contentView addSubview:self.sourceLabel];
    [self.contentView addSubview:self.moneyLabel];
    [self.contentView addSubview:self.expirationLabel];
    [self.contentView addSubview:self.validLabel];

    [self setNeedsUpdateConstraints];
}

- (void)updateConstraints {
    if (!self.didSetupConstraints) {
        
        [self.backImageView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(0, middleSpacing, 0, middleSpacing)];
        
        [self.sourceLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.backImageView withOffset:middleSpacing];
        [self.sourceLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.backImageView withOffset:bigSpacing];
//        [self.sourceLabel autoSetDimension:ALDimensionWidth toSize:MLWindowWidth*0.65];
//        [self.sourceLabel autoSetDimension:ALDimensionHeight toSize:80];
        
        
//        [self.moneyLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.sourceLabel];
//        [self.moneyLabel autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:middleSpacing];
//        [self.moneyLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.sourceLabel];
//        [self.moneyLabel autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.sourceLabel];
        [self.moneyLabel autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.backImageView withOffset:-bigSpacing];
        [self.moneyLabel autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.sourceLabel];
        
        [self.expirationLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.sourceLabel];
        [self.expirationLabel autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.backImageView withOffset:-smallSpacing];

//        [self.expirationLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.sourceLabel];
//        [self.expirationLabel autoPinEdgeToSuperviewEdge:ALEdgeBottom];
//        [self.expirationLabel autoSetDimension:ALDimensionWidth toSize:MLWindowWidth*0.25];
        
//        [self.validLabel autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.expirationLabel];
//        [self.validLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:self.expirationLabel];
//        [self.validLabel autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.expirationLabel];
//        [self.validLabel autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.moneyLabel];
        
        [self.validLabel autoAlignAxis:ALAxisHorizontal toSameAxisOfView:self.expirationLabel];
        [self.validLabel autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:self.backImageView withOffset:-middleSpacing];

        
        self.didSetupConstraints = YES;
    }
    [super updateConstraints];
}

- (UIImageView *)backImageView {
    if (!_backImageView) {
        _backImageView = [UIImageView newAutoLayoutView];
        _backImageView.backgroundColor = MLBackGroundColor;
    }
    return _backImageView;
}

- (UILabel *)sourceLabel {
    if (!_sourceLabel) {
        _sourceLabel = [UILabel newAutoLayoutView];
        _sourceLabel.layer.cornerRadius = 3;
        _sourceLabel.numberOfLines = 0;
        
    }
    return _sourceLabel;
}

- (UILabel *)moneyLabel {
    if (!_moneyLabel) {
        _moneyLabel = [UILabel newAutoLayoutView];
    }
    return _moneyLabel;
}

- (UILabel *)expirationLabel {
    if (!_expirationLabel) {
        _expirationLabel = [UILabel newAutoLayoutView];
        _expirationLabel.font = MLFont3;
    }
    return _expirationLabel;
}

- (UILabel *)validLabel {
    if (!_validLabel) {
        _validLabel = [UILabel newAutoLayoutView];
        _validLabel.font = MLFont3;
    }
    return _validLabel;
}

- (void)cellWillAppear {
    [super cellWillAppear];
    
    [self.backImageView setImage:[UIImage imageNamed:@"card_01"]]; //有效
//    [self.backgroundImageView setImage:[UIImage imageNamed:@"card_02"]]; //无效


    self.sourceLabel.attributedText = [NSString setFirstPart:@"来源：新手注册\n" firstFont:15 firstColor:MLBlackColor secondPart:@"可用于短租" secondFont:13 secongColor:MLLightGrayColor space:10 align:0];
    
    [self.moneyLabel setAttributedText:[NSString setFirstPart:@"¥" firstFont:25 firstColor:MLOrangeColor secondPart:@"10" secondFont:50 secongColor:MLOrangeColor]];
    
    self.expirationLabel.text = @"将在7天之后过期";
    self.expirationLabel.textColor = UIColorFromRGB(0xd4adad);
    
    self.validLabel.textColor = UIColorFromRGB(0xd4aeae);
    self.validLabel.text = @"有效期至2018.09.09 09:09";
    
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
