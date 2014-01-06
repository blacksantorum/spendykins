//
//  Transaction+Create.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "Transaction.h"

@interface Transaction (Create)

+ (Transaction *)transactionWithDescription:(NSString *)transactionDescription
                                     amount:(NSDecimalNumber *)amount
                           spendingCategory:(SpendingCategory *)spendingCategory
                                       date:(NSDate *)date
                                     rating:(NSNumber *)rating
                     inManagedObjectContext:(NSManagedObjectContext *)context;

@end
