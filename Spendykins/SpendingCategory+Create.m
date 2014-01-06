//
//  SpendingCategory+Create.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "SpendingCategory+Create.h"

@implementation SpendingCategory (Create)

+ (SpendingCategory *)spendingCategoryWithName:(NSString *)name
                        inManagedObjectContext:(NSManagedObjectContext *)context
{
    SpendingCategory *spendingCategory = nil;
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"SpendingCategory"];
    request.predicate = [NSPredicate predicateWithFormat:@"name = %@", name];
    
    NSError *error;
    NSArray *matches = [context executeFetchRequest:request error:&error];
    
    if (!matches || error || ([matches count] >1)) {
        // handle error
    } else if ([matches count]) {
        spendingCategory = [matches firstObject];
    } else {
        spendingCategory = [NSEntityDescription insertNewObjectForEntityForName:@"SpendingCategory"
                                                         inManagedObjectContext:context];
        spendingCategory.name = name;
    }
    
    return spendingCategory;
}

@end
