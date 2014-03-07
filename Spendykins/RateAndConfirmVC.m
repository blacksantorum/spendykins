//
//  RateAndConfirmVC.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/9/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "RateAndConfirmVC.h"
#import "Transaction+Create.h"
#import "SpendykinsAppDelegate.h"
#import "StringsGenerator.h"

@interface RateAndConfirmVC ()

@property (strong,nonatomic) NSManagedObjectContext *context;

// confirmations
@property (weak, nonatomic) IBOutlet UILabel *transactionDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *amountLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

// ratingscontrols

@property (weak, nonatomic) IBOutlet UITextField *commentsTextField;
@property (weak, nonatomic) IBOutlet UISlider *ratingSlider;
@property (weak, nonatomic) IBOutlet UILabel *confidenceLabel;


@end

@implementation RateAndConfirmVC

- (IBAction)tappedView:(id)sender {
    [self.view endEditing:YES];
}


- (NSManagedObjectContext *)context
{
    if (!_context) {
        SpendykinsAppDelegate *delegate = (SpendykinsAppDelegate *)[[UIApplication sharedApplication] delegate];
        _context = delegate.context;
    }
    return _context;
}




- (IBAction)sliderChanged:(id)sender {
    // only set slider to discrete values
    
    if (self.ratingSlider.value >= 1.0 && self.ratingSlider.value < 1.5) {
        self.ratingSlider.value = 1.0;
        self.confidenceLabel.text = @"1/5";
        self.commentsTextField.placeholder = [StringsGenerator randomCommentForRating:1];
    }
    else if (self.ratingSlider.value >= 1.5 && self.ratingSlider.value < 2.5) {
        self.ratingSlider.value = 2.0;
        self.confidenceLabel.text = @"2/5";
        self.commentsTextField.placeholder = [StringsGenerator randomCommentForRating:2];
    }
    else if (self.ratingSlider.value >= 2.5 && self.ratingSlider.value < 3.5) {
        self.ratingSlider.value = 3.0;
        self.confidenceLabel.text = @"3/5";
        self.commentsTextField.placeholder = [StringsGenerator randomCommentForRating:3];
    }
    else if (self.ratingSlider.value >= 3.5 && self.ratingSlider.value < 4.5) {
        self.ratingSlider.value = 4.0;
        self.confidenceLabel.text = @"4/5";
        self.commentsTextField.placeholder = [StringsGenerator randomCommentForRating:4];
    }
    else {
        self.ratingSlider.value = 5.0;
        self.confidenceLabel.text = @"5/5";
        self.commentsTextField.placeholder = [StringsGenerator randomCommentForRating:5];
    }
}


- (IBAction)cancelButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)addTransaction:(id)sender {
    // show alert view
    UIAlertView* av =
    [[UIAlertView alloc] initWithTitle:@"Private Transaction?"
                               message:@"Would you like to include this transaction in your ratings, but not show its details?"
                              delegate:self
                     cancelButtonTitle:@"Cancel"
                     otherButtonTitles:@"Yes", @"No",nil];
    [av show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 1:
            [self saveTransaction:NO];
            break;
        case 2:
            [self saveTransaction:YES];
            break;
    }
}


- (void)saveTransaction:(BOOL)publicly
{
    Transaction *transaction = [Transaction transactionWithDescription:self.transactionDescriptionLabel.text amount:self.transaction.amount spendingCategory:self.category date:self.transaction.date rating:[NSNumber numberWithFloat:self.ratingSlider.value] inManagedObjectContext:self.context];
    transaction.published = publicly ? @1 : @0;

}

-(void)viewDidLoad
{
    self.transactionDescriptionLabel.text = self.transaction.transactionDescription;
    self.amountLabel.text = (NSString *)self.transaction.amount;
    self.dateLabel.text = [self.transaction.date description];
}

@end
