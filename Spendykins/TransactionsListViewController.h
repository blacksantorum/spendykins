//
//  TransactionsListViewController.h
//  Spendykins
//
//  Created by Chris Tibbs on 3/7/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface TransactionsListViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (nonatomic,strong) NSManagedObjectContext *context;
@property (nonatomic,retain) NSFetchedResultsController *fetchedResultsController;

@end
