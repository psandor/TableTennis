//
//  ViewController.h
//  Table Tennis Score
//
//  Created by Péter Sándor on 2017. 09. 18..
//  Copyright © 2017. Péter Sándor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Settings.h"
#import "SettingsController.h"

@interface ViewController : UIViewController <DataEnteredDelegate>

@property (retain) SettingsModel* settings;

@end

