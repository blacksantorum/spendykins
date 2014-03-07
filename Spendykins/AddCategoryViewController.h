//
//  AddCategoryViewController.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/9/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCategoryViewController : UIViewController

@property (strong,nonatomic) NSManagedObjectContext *context;

-(void)addCategory:(NSString *)categoryName;

@end
