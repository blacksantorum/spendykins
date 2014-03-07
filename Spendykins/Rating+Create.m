//
//  Rating+Create.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "Rating+Create.h"
#import "Transaction.h"

@implementation Rating (Create)

+ (Rating *)ratingWithRating:(NSNumber *)rating
                 transaction:(Transaction *)transaction
      inManagedObjectContext:(NSManagedObjectContext *)context
{
    Rating *createdRating = [NSEntityDescription insertNewObjectForEntityForName:@"Rating"
                                                   inManagedObjectContext:context];
    createdRating.rating = rating;
    createdRating.transaction = transaction;
    
    return createdRating;
}

@end
