//
//  ContextNavController.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/7/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContextNavController : UINavigationController

@property (nonatomic,strong) NSManagedObjectContext *context;

@end
