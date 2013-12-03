//
//  CMGViewController.m
//  DelegateExample
//
//  Created by CMGabriel on 03/12/13.
//  Copyright (c) 2013 Example. All rights reserved.
//

#import "CMGViewController.h"
#import "CMGSecondViewController.h"

@interface CMGViewController ()

@end

@implementation CMGViewController

@synthesize departmentLabel;

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

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CMGSecondViewController *secondViewController = (CMGSecondViewController *)segue.destinationViewController;
    secondViewController.delegate = self;
}

#pragma mark - CMGSecondViewControllerDelegateMethods
-(void) submitButtonActionPerformed:(NSString *) stringValue
{
    self.departmentLabel.text = stringValue;
}

@end
