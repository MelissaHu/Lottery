//
//  LuckyFellowItem.h
//  抽奖神器
//
//  Created by iwege on 6/1/15.
//  Copyright (c) 2015 melissa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LuckyFellowItem : NSObject
@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
