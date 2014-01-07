//
//  AddTransactionViewController.m
//  Spendykins
//
//  Created by Chris Tibbs on 1/7/14.
//  Copyright (c) 2014 Chris Tibbs. All rights reserved.
//

#import "AddTransactionViewController.h"

@interface AddTransactionViewController ()
// transaction property setters
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UISlider *ratingSlider;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
// outlets
@property (weak, nonatomic) IBOutlet UILabel *descriptionTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *confirmationTextLabel;
@property (weak, nonatomic) IBOutlet UIImageView *smileyFaceImage;


@end

@implementation AddTransactionViewController

- (IBAction)addTransactionButton:(id)sender {
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
