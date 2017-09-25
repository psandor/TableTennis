//
//  ViewController.h
//  Table Tennis Score
//
//  Created by Péter Sándor on 2017. 09. 18..
//  Copyright © 2017. Péter Sándor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Settings.h"

@protocol DataEnteredDelegate <NSObject>
-(void)userDidEnterInformation:(SettingsModel *)info;
@end

@interface SettingsController : UIViewController
- (IBAction)btnOkClick:(id)sender;

@property SettingsModel *settings;
@property (nonatomic) id <DataEnteredDelegate> delegate;

@end



