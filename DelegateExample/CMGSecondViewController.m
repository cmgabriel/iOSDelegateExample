//
//  CMGSecondViewController.m
//  DelegateExample
//
//  Created by CMGabriel on 03/12/13.
//  Copyright (c) 2013 Example. All rights reserved.
//

#import "CMGSecondViewController.h"

@interface CMGSecondViewController ()

@end

@implementation CMGSecondViewController

@synthesize departmentTextField;
@synthesize submitButton;

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

// Submit Button Action Performed
-(void) submitButtonPressed:(id)sender
{
    NSString *textFieldValue = [self.departmentTextField text];
    [self dismissViewControllerAnimated:YES completion:^{
        [self.delegate submitButtonActionPerformed:textFieldValue];
    }];
}

@end
