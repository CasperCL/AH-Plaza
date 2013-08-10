//
//  SettingsViewController.m
//  AH Plaza
//
//  Created by Casper Eekhof on 22-07-13.
//  Copyright (c) 2013 JTC. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsManager.h"
#import <QuartzCore/QuartzCore.h>

@interface SettingsViewController ()

@end

@implementation SettingsViewController

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
    
    [_keepLoggedInSwitch setOn: [[SettingsManager sharedInstance] autologinEnabled]];
    _resetButton.layer.cornerRadius = 10;
    _resetButton.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setKeepLoggedInSwitch:nil];
    [self setResetButton:nil];
    [super viewDidUnload];
}
- (IBAction)autoLoginSliderValueChanged:(id)sender {
    [[SettingsManager sharedInstance] setAutologinEnabled: [_keepLoggedInSwitch isOn]];
}
@end
