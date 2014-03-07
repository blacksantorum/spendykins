//
//  FakeTransaction.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/9/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SpendingCategory.h"

@interface FakeTransaction : NSObject

@property (nonatomic, strong) NSString * transactionDescription;
@property (nonatomic, strong) NSDate * date;
@property (nonatomic, strong) NSDecimalNumber * amount;
@property (nonatomic, strong) SpendingCategory *category;
@property (nonatomic, strong) NSSet *ratings;

@end
