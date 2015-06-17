//
//  LoginModel.m
//  UnitTest
//
//  Created by Paul Moon on 6/17/15.
//  Copyright (c) 2015 RIIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginModel.h"

@implementation LoginModel

- (BOOL)doLoginWithUsername:(NSString*)username andPassword:(NSString*)password
{
    NSDate* currentDate = [NSDate date];
    int throwException = (int)[currentDate timeIntervalSince1970] % 2;
    if (throwException > 0)
    {
        NSException* myException = [NSException
                                    exceptionWithName:@"Network Error"
                                    reason:@"There was a communication error."
                                    userInfo:nil];
        @throw myException;
    }
    return TRUE;
}

@end
