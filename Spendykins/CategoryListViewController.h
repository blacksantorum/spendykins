//
//  CategoryListViewController.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/7/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface CategoryListViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (nonatomic,strong) NSManagedObjectContext *context;
@property (nonatomic,retain) NSFetchedResultsController *fetchedResultsController;

-(void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end
