//
//  TicketItem.h
//  minglongyongche
//
//  Created by jiamanu on 2018/4/9.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import <RETableViewManager/RETableViewManager.h>
#import "TicketModel.h"

@interface TicketItem : RETableViewItem
@property (nonatomic,readwrite,copy) NSString *ticketName;
@property (nonatomic,readwrite,copy) NSString *note;
//@property (nonatomic,readwrite,copy) NSString *duration;
//@property (nonatomic,copy) NSString *tid;
@property (nonatomic,copy) NSString *status;

@property (nonatomic,assign) BOOL isValid;  //是否有效


- (instancetype) initWithTicketModel:(TicketModel *)model;

- (instancetype) initWithOrderTicketModel:(TicketModel *)model validStartTime:(NSDate *)start validEndTime:(NSDate *)end;


@end
