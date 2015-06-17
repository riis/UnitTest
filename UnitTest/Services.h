//
//  Services.h
//  UnitTest
//
//  Created by Paul Moon on 6/17/15.
//  Copyright (c) 2015 RIIS. All rights reserved.
//

#import "LoginModel.h"
#import "ViewHelper.h"

@interface Services : NSObject
{
}

+ (id)sharedInstance;

//Login
- (LoginModel*) getLoginModel;

@end
