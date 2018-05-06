//
//  CarDetailConfigCell.m
//  minglongyongche
//
//  Created by jiamanu on 2018/4/4.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import "CarDetailConfigCell.h"

@implementation CarDetailConfigCell

+ (CGFloat)heightWithItem:(RETableViewItem *)item tableViewManager:(RETableViewManager *)tableViewManager {
    return 200;
}

- (void)cellDidLoad {
    [super cellDidLoad];
    
    [self.contentView addSubview:self.configLabel];
    
    [self.contentView addSubview:self.configBtn1];
    [self.contentView addSubview:self.configBtn2];
    [self.contentView addSubview:self.configBtn3];
    [self.contentView addSubview:self.configBtn4];
    [self.contentView addSubview:self.configBtn5];
    [self.contentView addSubview:self.configBtn6];
    [self.contentView addSubview:self.configBtn7];
    [self.contentView addSubview:self.configBtn8];
    
    [self setNeedsUpdateConstraints];
}

- (void)updateConstraints {
    if (!self.didSetupConstraints) {
        
        [self.configLabel autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:middleSpacing];
        [self.configLabel autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:middleSpacing];
        
        NSArray *views = @[self.configBtn1,self.configBtn2,self.configBtn3,self.configBtn4];
        [views autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:middleSpacing];
        [views autoMatchViewsDimension:ALDimensionHeight];

        [[views firstObject] autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.configLabel];
        [[views firstObject]  autoSetDimension:ALDimensionHeight toSize:70];
        
        
        NSArray *views2 = @[self.configBtn5,self.configBtn6,self.configBtn7,self.configBtn8];
        [views2 autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:middleSpacing];
        
        [[views2 firstObject] autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:middleSpacing];
        [views2 autoMatchViewsDimension:ALDimensionHeight];
        
        [[views2 firstObject] autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.configBtn1];
        
        self.didSetupConstraints = YES;
    }
    [super updateConstraints];
}

- (UILabel *)configLabel {
    if (!_configLabel) {
        _configLabel = [UILabel newAutoLayoutView];
        _configLabel.textColor = MLBlackColor;
        _configLabel.text = @"车辆配置";
        _configLabel.font = MLFont4;
    }
    return _configLabel;
}

- (IntegrationButton *)configBtn1 {
    if (!_configBtn1) {
        _configBtn1 = [IntegrationButton newAutoLayoutView];
        
        _configBtn1.btnImageView.image = [UIImage imageNamed:@"gearshift"];
        _configBtn1.btnLabel.font = MLFont1;
        _configBtn1.btnLabel.textColor = MLGrayColor;
        _configBtn1.spaceConstraints.constant = 8;
    }
    return _configBtn1;
}

- (IntegrationButton *)configBtn2 {
    if (!_configBtn2) {
        _configBtn2 = [IntegrationButton newAutoLayoutView];
        _configBtn2.btnImageView.image = [UIImage imageNamed:@"gas-station"];
        _configBtn2.btnLabel.font = MLFont1;
        _configBtn2.btnLabel.textColor = MLGrayColor;
        _configBtn2.spaceConstraints.constant = 8;
    }
    return _configBtn2;
}

- (IntegrationButton *)configBtn3 {
    if (!_configBtn3) {
        _configBtn3 = [IntegrationButton newAutoLayoutView];
        _configBtn3.btnImageView.image = [UIImage imageNamed:@"parking-4"];
        _configBtn3.btnLabel.font = MLFont1;
        _configBtn3.btnLabel.textColor = MLGrayColor;
        _configBtn3.spaceConstraints.constant = 8;
    }
    return _configBtn3;
}

- (IntegrationButton *)configBtn4 {
    if (!_configBtn4) {
        _configBtn4 = [IntegrationButton newAutoLayoutView];
        _configBtn4.btnImageView.image = [UIImage imageNamed:@"alloy-wheel-2"];
        _configBtn4.btnLabel.font = MLFont1;
        _configBtn4.btnLabel.textColor = MLGrayColor;
        _configBtn4.spaceConstraints.constant = 8;
    }
    return _configBtn4;
}

- (IntegrationButton *)configBtn5{
    if (!_configBtn5) {
        _configBtn5 = [IntegrationButton newAutoLayoutView];
        _configBtn5.btnImageView.image = [UIImage imageNamed:@"parking-1"];
        _configBtn5.btnLabel.font = MLFont1;
        _configBtn5.btnLabel.textColor = MLGrayColor;
        _configBtn5.spaceConstraints.constant = 8;
    }
    return _configBtn5;
}

- (IntegrationButton *)configBtn6 {
    if (!_configBtn6) {
        _configBtn6 = [IntegrationButton newAutoLayoutView];
        _configBtn6.btnImageView.image = [UIImage imageNamed:@"car-key"];
        _configBtn6.btnLabel.font = MLFont1;
        _configBtn6.btnLabel.textColor = MLGrayColor;
        _configBtn6.spaceConstraints.constant = 8;
    }
    return _configBtn6;
}

- (IntegrationButton *)configBtn7 {
    if (!_configBtn7) {
        _configBtn7 = [IntegrationButton newAutoLayoutView];
        _configBtn7.btnImageView.image = [UIImage imageNamed:@"airbag"];
        _configBtn7.btnLabel.font = MLFont1;
        _configBtn7.btnLabel.textColor = MLGrayColor;
        _configBtn7.spaceConstraints.constant = 8;
    }
    return _configBtn7;
}

- (IntegrationButton *)configBtn8 {
    if (!_configBtn8) {
        _configBtn8 = [IntegrationButton newAutoLayoutView];
        _configBtn8.btnImageView.image = [UIImage imageNamed:@"skylight"];
        _configBtn8.btnLabel.font = MLFont1;
        _configBtn8.btnLabel.textColor = MLGrayColor;
        _configBtn8.spaceConstraints.constant = 8;
    }
    return _configBtn8;
}

- (void)cellWillAppear {
    [super cellWillAppear];
    
    self.configBtn1.btnLabel.text = self.item.site;
    self.configBtn2.btnLabel.text = self.item.gate;
    self.configBtn3.btnLabel.text = self.item.air;
    self.configBtn4.btnLabel.text = self.item.box;
    
    self.configBtn5.btnLabel.text = [NSString stringWithFormat:@"%@倒车雷达",self.item.reverse];
    self.configBtn6.btnLabel.text = [NSString stringWithFormat:@"%@号%@",self.item.grade,self.item.type];
    self.configBtn7.btnLabel.text = [NSString stringWithFormat:@"%@GPS",self.item.gps];
    self.configBtn8.btnLabel.text = [NSString stringWithFormat:@"%@个气帘",self.item.curtain];

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
