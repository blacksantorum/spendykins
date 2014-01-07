//
//  AddTransactionViewController.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/7/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpendingCategory.h"

@interface AddTransactionViewController : UIViewController

@property (strong,nonatomic) SpendingCategory *category;
@property (strong,nonatomic) NSManagedObjectContext *context;

@end
