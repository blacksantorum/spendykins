//
//  SpendykinsViewController.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/6/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "SpendykinsViewController.h"
#import "SpendingCategory+Create.h"
#import "ContextNavController.h"
#import "StringsGenerator.h"

@interface SpendykinsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *confirmationLabel;
@property (weak, nonatomic) IBOutlet UITextField *categoryTextField;
@end

@implementation SpendykinsViewController

- (IBAction)addCategoryButton:(id)sender {
    [self addCategory:self.categoryTextField.text];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ContextNavController *destVC = (ContextNavController *)segue.destinationViewController;
    [destVC setContext:self.context];
}

-(void)confirm:(BOOL)wasAdded
{
    if (wasAdded) {
        self.confirmationLabel.text = [NSString stringWithFormat:@"%@ added!",self.categoryTextField.text];
    } else {
        self.confirmationLabel.text = [NSString stringWithFormat:@"%@ already exists!",self.categoryTextField.text];
    }
}

-(void)viewDidLoad
{
    self.categoryTextField.placeholder = [StringsGenerator categoryExamplesString];
}

@end