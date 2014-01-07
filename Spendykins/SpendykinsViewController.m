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

@interface SpendykinsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *confirmationLabel;
@property (weak, nonatomic) IBOutlet UITextField *categoryTextField;
@end

@implementation SpendykinsViewController

- (IBAction)addCategoryButton:(id)sender {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"SpendingCategory"];
    request.predicate = [NSPredicate predicateWithFormat:@"name = %@", self.categoryTextField.text];
    
    NSError *error;
    NSArray *matches = [self.context executeFetchRequest:request error:&error];
    if (![matches count]) {
        SpendingCategory *category = [SpendingCategory spendingCategoryWithName:self.categoryTextField.text inManagedObjectContext:self.context];
        self.confirmationLabel.text = [NSString stringWithFormat:@"%@ added!",category.name];
    } else {
        self.confirmationLabel.text = [NSString stringWithFormat:@"%@ already exists!",self.categoryTextField.text];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ContextNavController *destVC = (ContextNavController *)segue.destinationViewController;
    destVC.context = self.context;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end