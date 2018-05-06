//
//  OrderItem.m
//  minglongyongche
//
//  Created by jiamanu on 2018/4/10.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import "OrderItem.h"
#import "NSDate+FormatterTime.h"

@implementation OrderItem

- (instancetype)initWithOrderModel:(CarModel *)model {
    self = [super init];
    
    if (self) {
        self.name = model.name;
        
        if ([model.belong isEqualToString:@"1"]) {
            self.license = @"沪";
        }else{
            self.license = model.belong;
        }
        
        self.qctime = [NSDate getYMDhmFormatterTime:model.qctime];
        self.qcaddress = model.qcaddress;
        self.hctime = [NSDate getYMDhmFormatterTime:model.hctime];
        self.hcaddress = model.hcaddress;
        self.money = model.money;
        
        if ([model.status isEqualToString:@"0"]) {
            self.result  = @"未付款";
            self.status = @"去付款";
        }else if ([model.status isEqualToString:@"1"]){
            self.result = @"已付款";
            self.status = @"进行中";
        }else if ([model.status isEqualToString:@"2"]){
            self.result = @"已还车";
            self.status = @"谢谢使用";
        }
    }
    
    return self;
}


//- (instancetype)initWithOrderModel:(id)model
//
//- (instancetype)initWithOrderModel:(id)model {
//
//    self = [super init];
//    if (self) {
//
//        self.name = model.name;
//
//    }
//
//    return self;
//
//}



@end
