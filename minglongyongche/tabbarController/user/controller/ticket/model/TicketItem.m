//
//  TicketItem.m
//  minglongyongche
//
//  Created by jiamanu on 2018/4/9.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import "TicketItem.h"
#import "NSDate+FormatterTime.h"

@implementation TicketItem

- (instancetype)initWithTicketModel:(TicketModel *)model {
    self = [super init];
    if (self) {
        self.name = [NSString stringWithFormat:@"%@元优惠券",model.money];
//        self.name =  [NSString stringWithFormat:@"%@",model.money];
        self.status = model.status;
        
        NSString *starttime = [NSDate getYMDhmFormatterTime:model.stime];
        NSString *endtime = [NSDate getYMDhmFormatterTime:model.etime];
        
        self.note = [NSString stringWithFormat:@"有效期：%@ - %@",starttime,endtime];
    }
    return self;
}

- (instancetype)initWithOrderTicketModel:(TicketModel *)model validStartTime:(NSDate *)start validEndTime:(NSDate *)end {
    self = [super init];
    if (self) {
        self.name = [NSString stringWithFormat:@"%@元优惠券",model.money];
        self.status = model.status;
        
        NSString *starttime = [NSDate getYMDhmFormatterTime:model.stime];
        NSString *endtime = [NSDate getYMDhmFormatterTime:model.etime];
        
        self.note = [NSString stringWithFormat:@"有效期：%@ - %@",starttime,endtime];

    }
    return self;
}

@end
