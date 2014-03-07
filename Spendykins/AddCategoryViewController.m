//
//  AddCategoryViewController.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/9/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "AddCategoryViewController.h"
#import "SpendingCategory+Create.h"
#import "ContextNavController.h"

@interface AddCategoryViewController ()

@end

@implementation AddCategoryViewController

-(void)addCategory:(NSString *)categoryName
{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"SpendingCategory"];
    request.predicate = [NSPredicate predicateWithFormat:@"name = %@", categoryName];
    
    NSError *error;
    NSArray *matches = [self.context executeFetchRequest:request error:&error];
    if (![matches count]) {
        // add transaction and confirm, return true
        SpendingCategory *category = [SpendingCategory spendingCategoryWithName:categoryName inManagedObjectContext:self.context];
        [self confirm:YES];
    } else {
        [self confirm:NO];
    }
}

-(void)confirm:(BOOL)wasAdded
{
    //override
}

@end
