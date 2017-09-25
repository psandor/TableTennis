
//
//  ViewController.m
//  Table Tennis Score
//
//  Created by Péter Sándor on 2017. 09. 18..
//  Copyright © 2017. Péter Sándor. All rights reserved.
//

#import "SettingsController.h"
#import "Settings.h"

@implementation SettingsController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(_settings == NULL){
        _settings = [[SettingsModel alloc] init];
        _settings.point = @21;
        _settings.LeftPlayer = @"asd";
    }
}

- (IBAction)btnOkClick:(id)sender {
    [_delegate userDidEnterInformation:_settings];
}
@end
