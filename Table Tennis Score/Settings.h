//
//  Settings.h
//  Table Tennis Score
//
//  Created by Péter Sándor on 21.09.17.
//  Copyright © 2017 Péter Sándor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingsModel : NSObject {
        NSNumber *point;
        NSString *LeftPlayer;
        NSString *RightPlayer;
    }
    @property (retain) NSNumber* point;
    @property (retain) NSString* LeftPlayer;
    @property (retain) NSString* RightPlayer;

    - (id) init;
@end
