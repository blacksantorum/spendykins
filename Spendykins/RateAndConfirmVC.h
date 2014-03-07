//
//  RateAndConfirmVC.h
//  Spendykins
//
//  Created by Chris Tibbs on 1/9/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FakeTransaction.h"

@interface RateAndConfirmVC : UIViewController <UIAlertViewDelegate>

@property (strong,nonatomic) FakeTransaction *transaction;
@property (nonatomic,strong) SpendingCategory *category;

@end
