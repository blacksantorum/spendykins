//
//  SpendykinsViewController.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCategoryViewController.h"

@interface SpendykinsViewController : AddCategoryViewController

@property (strong,nonatomic) NSManagedObjectContext *context;

@end
