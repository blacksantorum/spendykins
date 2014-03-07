//
//  Rating.h
//  Spendykins
//
//  Created by Chris Tibbs on 3/5/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Transaction;

@interface Rating : NSManagedObject

@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) Transaction *transaction;

@end
