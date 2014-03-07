//
//  Rating+Create.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "Rating.h"

@interface Rating (Create)

+ (Rating *)ratingWithRating:(NSNumber *)rating
                 transaction:(Transaction *)transaction
                        inManagedObjectContext:(NSManagedObjectContext *)context;


@end
