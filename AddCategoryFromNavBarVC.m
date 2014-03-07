//
//  AddCategoryFromNavBarVC.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/9/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "AddCategoryFromNavBarVC.h"
#import "StringsGenerator.h"

@interface AddCategoryFromNavBarVC ()

@property (weak, nonatomic) IBOutlet UILabel *confirmationLabel;
@property (weak, nonatomic) IBOutlet UITextField *categoryTextField;

@end

@implementation AddCategoryFromNavBarVC

- (IBAction)doneButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)addCategoryButton:(id)sender {
    [self addCategory:self.categoryTextField.text];
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
