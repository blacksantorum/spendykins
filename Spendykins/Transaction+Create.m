//
//  Transaction+Create.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "Transaction+Create.h"
#import "Rating+Create.h"

@implementation Transaction (Create)

+ (Transaction *)transactionWithDescription:(NSString *)transactionDescription
                                     amount:(NSDecimalNumber *)amount
                           spendingCategory:(SpendingCategory *)spendingCategory
                                       date:(NSDate *)date
                                     rating:(NSNumber *)rating
         inManagedObjectContext:(NSManagedObjectContext *)context
{
    Transaction *transaction = [NSEntityDescription insertNewObjectForEntityForName:@"Transaction"
                                                             inManagedObjectContext:context];
    transaction.transactionDescription = transactionDescription;
    transaction.date = date;
    transaction.amount = amount;
    transaction.category = spendingCategory;
    
    Rating *createdRating = [Rating ratingWithRating:rating transaction:transaction inManagedObjectContext:context];
    
    transaction.rating = createdRating;
    
    return transaction;
}

@end
