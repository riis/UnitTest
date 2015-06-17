//
//  ViewController.m
//  UnitTest
//
//  Created by Paul Moon on 6/17/15.
//  Copyright (c) 2015 RIIS. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginModel.h"
#import "ViewHelper.h"
#import "Services.h"

@interface LoginViewController ()
@end

LoginModel *loginModel;

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)performLogin:(id)sender
{
    if([self validUsername] && [self validPassword])
    {
        @try
        {
            loginModel = [[Services sharedInstance] getLoginModel];
            [loginModel doLoginWithUsername:[_usernameTextField text] andPassword:[_passwordTextField text]];
            [self performSegueWithIdentifier:@"showWelcomeScreen" sender:self];
        }
        @catch(NSException *e)
        {
            [ViewHelper showAlertForTitle:@"Network Error" andTheMessage:@"There was a communication error." andAccessibilityLabel:@"Network Error"];
        }
    }
}

- (BOOL)validUsername
{
    NSString *username = [_usernameTextField text];
    if ([username isEqualToString:@"RIIS"])
    {
        [_incorrectUsername setHidden:TRUE];
        return TRUE;
    }
    else
    {
        [_incorrectUsername setHidden:FALSE];
    }
    return FALSE;
}


- (BOOL)validPassword
{
    NSString *password = [_passwordTextField text];
    if ([password isEqualToString:@"letmein"])
    {
        [_incorrectPassword setHidden:TRUE];
        return TRUE;
    }
    else
    {
        [_incorrectPassword setHidden:FALSE];
    }
    return FALSE;
}

@end
