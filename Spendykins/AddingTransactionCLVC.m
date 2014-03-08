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
#import "NavPathAlertView.h"

@interface AddingTransactionCLVC ()

@end

@implementation AddingTransactionCLVC

/*
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
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SpendingCategory *category = [self.fetchedResultsController objectAtIndexPath:indexPath];
    NavPathAlertView *alertView = [[NavPathAlertView alloc] initWithTitle:category.name
                                                                  message:@"Would you like to add a transaction or review your past transactions for this category?"
                                                                 delegate:self
                                                        cancelButtonTitle:@"Go back"
                                                        otherButtonTitles:@"Add",@"Review", nil];
    alertView.category = category;
    [alertView show];
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
            
        case 1: {
            NSLog(@"button 1 pressed");
            AddTransactionViewController *nextVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"startAdd"];
            NavPathAlertView *av = (NavPathAlertView *)alertView;
            nextVC.category = av.category;
            [self.navigationController pushViewController:nextVC animated:YES];
            break;
        }
        
        case 2:
            NSLog(@"button 2 pressed");
            break;
            
        default:
            [alertView removeFromSuperview];
            break;
    }
}
@end
