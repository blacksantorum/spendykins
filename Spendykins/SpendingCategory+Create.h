//
//  SpendingCategory+Create.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "SpendingCategory.h"

@interface SpendingCategory (Create)

+ (SpendingCategory *)spendingCategoryWithName:(NSString *)name
                        inManagedObjectContext:(NSManagedObjectContext *)context;

@end
