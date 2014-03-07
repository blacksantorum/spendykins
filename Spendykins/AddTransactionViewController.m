//
//  AddTransactionViewController.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/7/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "AddTransactionViewController.h"
#import "FakeTransaction.h"
#import "RateAndConfirmVC.h"
#import "Transaction+Create.h"

@interface AddTransactionViewController ()
// transaction property setters
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
// outlets
@property (weak, nonatomic) IBOutlet UILabel *confirmationTextLabel;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;


@end

@implementation AddTransactionViewController

- (IBAction)datePickerTapped:(id)sender {
    self.nextButton.enabled = YES;
    [self.view endEditing:YES];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"rateAndConfirm"]) {
        RateAndConfirmVC *vc = (RateAndConfirmVC *)segue.destinationViewController;
        vc.category = self.category;
        FakeTransaction *transaction = [[FakeTransaction alloc] init];
        transaction.transactionDescription = self.descriptionTextField.text;
        transaction.amount = (NSDecimalNumber *)self.amountTextField.text;
        transaction.date = self.datePicker.date;
        
        vc.transaction = transaction;
    }
}


- (void)viewDidLoad
{
    self.nextButton.enabled = NO;
}

- (void)addTransaction:(FakeTransaction *)transaction
{
   /* Transaction *transactionToAdd = [Transaction transactionWithDescription:transaction.transactionDescription amount:transaction.amount spendingCategory:transaction.category date:transaction.date rating: inManagedObjectContext:self.context]; */
}



@end
