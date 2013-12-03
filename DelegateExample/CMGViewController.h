//
//  CMGViewController.h
//  DelegateExample
//
//  Created by CMGabriel on 03/12/13.
//  Copyright (c) 2013 Example. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMGSecondViewController.h"

@interface CMGViewController : UIViewController <CMGSecondViewControllerDelegate>

@property (strong,nonatomic) IBOutlet UILabel *departmentLabel;

@end
