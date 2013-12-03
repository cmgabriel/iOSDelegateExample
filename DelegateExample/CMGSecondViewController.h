//
//  CMGSecondViewController.h
//  DelegateExample
//
//  Created by CMGabriel on 03/12/13.
//  Copyright (c) 2013 Example. All rights reserved.
//

//Protocol Definiation for the the controller
@protocol CMGSecondViewControllerDelegate <NSObject>

-(void) submitButtonActionPerformed:(NSString *) stringValue;

@end

#import <UIKit/UIKit.h>

@interface CMGSecondViewController : UIViewController
@property (strong,nonatomic) id<CMGSecondViewControllerDelegate> delegate;
@property (strong,nonatomic) IBOutlet UITextField *departmentTextField;
@property (strong,nonatomic) IBOutlet UIButton *submitButton;

-(IBAction)submitButtonPressed:(id)sender;

@end
