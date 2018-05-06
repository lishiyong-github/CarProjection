//
//  MyNewOrderCell.h
//  minglongyongche
//
//  Created by jiamanu on 2018/5/6.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import "BaseCell.h"

@interface MyNewOrderCell : BaseCell

@property (nonatomic,strong) UIView *topBackView;
@property (nonatomic,strong) UIView *timeLabel;
@property (nonatomic,strong) UIView *moneyLabel;

@property (nonatomic,strong) UIView *bottomBackView;
@property (nonatomic,strong) UIImageView *carImage;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *feature1;
@property (nonatomic,strong) UILabel *feature2;

@property (nonatomic,strong) UIButton *typeButton;

@end
