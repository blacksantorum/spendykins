//
//  Transaction.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Rating, SpendingCategory;

@interface Transaction : NSManagedObject

@property (nonatomic, retain) NSString * transactionDescription;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSDecimalNumber * amount;
@property (nonatomic, retain) SpendingCategory *category;
@property (nonatomic, retain) NSSet *ratings;
@end

@interface Transaction (CoreDataGeneratedAccessors)

- (void)addRatingsObject:(Rating *)value;
- (void)removeRatingsObject:(Rating *)value;
- (void)addRatings:(NSSet *)values;
- (void)removeRatings:(NSSet *)values;

@end
