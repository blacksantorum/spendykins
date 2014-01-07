//
//  AddingTransactionCLVC.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/7/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "AddingTransactionCLVC.h"
#import "AddTransactionViewController.h"
#import "SpendingCategory.h"

@interface AddingTransactionCLVC ()

@end

@implementation AddingTransactionCLVC

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"addTransaction"]) {
        if ([segue.destinationViewController isKindOfClass:[AddTransactionViewController class]]) {
            AddTransactionViewController *vc = (AddTransactionViewController *)segue.destinationViewController;
            vc.context = self.context;
            
            SpendingCategory *category = [self.fetchedResultsController objectAtIndexPath:[self.tableView indexPathForCell:sender]];
            
            vc.category = category;
            vc.title = category.name;
        }
    }
}

@end
