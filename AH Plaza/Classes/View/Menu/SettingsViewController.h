//
//  SettingsViewController.h
//  AH Plaza
//
//  Created by Casper Eekhof on 22-07-13.
//  Copyright (c) 2013 JTC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AHViewController.h"

@interface SettingsViewController : AHViewController

@property (weak, nonatomic) IBOutlet UISwitch *keepLoggedInSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *notificationSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *jobOfferSwitch;

@property (weak, nonatomic) IBOutlet UIButton *resetButton;

@property (strong, nonatomic) IBOutletCollection(UISwitch) NSArray *switches;

- (IBAction)autoLoginSliderValueChanged:(id)sender;
- (IBAction)notificationSwitchValueChanged:(id)sender;
- (IBAction)resetSettings:(id)sender;

@end
