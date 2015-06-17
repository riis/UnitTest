//
//  Services.m
//  UnitTest
//
//  Created by Paul Moon on 6/17/15.
//  Copyright (c) 2015 RIIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Services.h"
#import "LoginModel.h"
#import "ViewHelper.h"


@implementation Services

id loginModelInstance;

+ (id)sharedInstance
{
    static Services *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^
                  {
                      sharedMyManager = [[self alloc] init];
                      
                  });
    return sharedMyManager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        loginModelInstance = [[LoginModel alloc] init];
    }
    return self;
}

- (LoginModel*) getLoginModel
{
    return loginModelInstance;
}


@end