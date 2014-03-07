//
//  Transaction.h
//  Spendykins
//
//  Created by Chris Tibbs on 3/5/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Rating, SpendingCategory;

@interface Transaction : NSManagedObject

@property (nonatomic, retain) NSDecimalNumber * amount;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSString * transactionDescription;
@property (nonatomic, retain) NSNumber * published;
@property (nonatomic, retain) SpendingCategory *category;
@property (nonatomic, retain) Rating *rating;

@end
