//
//  ViewHelper.m
//  UnitTest
//
//  Created by Paul Moon on 6/17/15.
//  Copyright (c) 2015 RIIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewHelper.h"

@implementation ViewHelper

+(void) showAlertForTitle:(NSString *)title andTheMessage:(NSString *)message andAccessibilityLabel:(NSString *)label
{
    UIAlertView *successAlert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [successAlert setAccessibilityLabel:label];
    [successAlert show];
}



@end