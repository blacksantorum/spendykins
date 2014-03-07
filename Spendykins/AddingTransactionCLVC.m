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
#import "AddCategoryFromNavBarVC.h"

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

- (IBAction)addCategoryButton:(id)sender {
    AddCategoryFromNavBarVC *addVC = [[AddCategoryFromNavBarVC alloc] initWithNibName:@"AddCategoryFromNavBarVC" bundle:nil];
    addVC.context = self.context;
    [self presentViewController:addVC animated:YES completion:nil];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"button 0 pressed");
            break;
            
        case 1:
            NSLog(@"button 1 pressed");
            break;
        
        case 2:
            NSLog(@"button 2 pressed");
            break;
            
        default:
            [alertView removeFromSuperview];
            break;
    }
}
@end
