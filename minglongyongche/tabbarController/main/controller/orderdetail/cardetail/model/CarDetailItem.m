//
//  CarDetailItem.m
//  minglongyongche
//
//  Created by jiamanu on 2018/4/17.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import "CarDetailItem.h"

@implementation CarDetailItem

- (instancetype)initWithCarDetaiModel:(CarModel *)model {
    self = [super init];
    
    if (self) {
        self.name = model.name;
        self.mname =  model.mname;
        
        if ([model.belong isEqualToString:@"1"]) {
            self.belong = @"沪";
        }else{
            self.belong = model.belong;
        }
        
        self.money= model.money;
        self.address = model.address;
        self.count = model.count;
        
        
        self.site = [NSString stringWithFormat:@"%@个座椅",model.site];
        self.gate = [NSString stringWithFormat:@"%@个车门",model.gate];
        self.grade = model.grade;
        self.box = [NSString stringWithFormat:@"%@个音箱",model.box];
        self.reverse = model.reverse;
        self.air = [NSString stringWithFormat:@"%@个气囊",model.air];
        self.curtain = model.curtain;
        self.gps = model.GPS;
        self.type = model.type;
        
//        @property (nonatomic,copy) NSString *site;   //车座个数
//        @property (nonatomic,copy) NSString *gate;   //车门数
//        @property (nonatomic,copy) NSString *grade;   //燃油型号  l 油箱容量
//        @property (nonatomic,copy) NSString *box; //音箱数
//        @property (nonatomic,copy) NSString *reverse; //倒车雷达
//        @property (nonatomic,copy) NSString *air; //气囊个数
//        @property (nonatomic,strong) NSString *curtain; //气帘个数
//        @property (nonatomic,strong) NSString *gps;   // GPS导航
    }
    return self;
}

@end
