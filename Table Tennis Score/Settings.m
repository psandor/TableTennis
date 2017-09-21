//
//  Settings.m
//  Table Tennis Score
//
//  Created by Péter Sándor on 21.09.17.
//  Copyright © 2017 Péter Sándor. All rights reserved.
//

//#import <UIKit/UIKit.h>
#import "Settings.h"

@implementation SettingsModel
@synthesize point;
@synthesize LeftPlayer;
@synthesize RightPlayer;

- (id) init
{
    self = [super init];
    if (self!=nil) {
        point = @11;
        LeftPlayer = @"";
        RightPlayer = @"";
    }
    return self;
}

@end
