//
//  ViewController.m
//  Table Tennis Score
//
//  Created by Péter Sándor on 2017. 09. 18..
//  Copyright © 2017. Péter Sándor. All rights reserved.
//

#import "ViewController.h"
#import "SettingsController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblLeft;
@property (weak, nonatomic) IBOutlet UILabel *lblRight;
@property (weak, nonatomic) IBOutlet UIButton *btnRestart;

-(void) addPoint:(UILabel*)current other:(UILabel*) other;


@end

@implementation ViewController
@synthesize settings;
- (void)viewDidLoad {
    [super viewDidLoad];
    settings = NULL;
    
    _btnRestart.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    _btnRestart.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;
    _btnRestart.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelLeftTapped:)];
    tapGestureRecognizer.numberOfTapsRequired = 1;
    [_lblLeft addGestureRecognizer:tapGestureRecognizer];
    _lblLeft.userInteractionEnabled = YES;
    
    
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tapGestureRecognizerRight = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelRightTapped:)];
    tapGestureRecognizerRight.numberOfTapsRequired = 1;
    [_lblRight addGestureRecognizer:tapGestureRecognizerRight];
    _lblRight.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showSettingsSegue"]){
        //UINavigationController *navController = (UINavigationController *)segue.destinationViewController;
        SettingsController *controller = (SettingsController *)segue.destinationViewController;
        controller.delegate = self;
        if(settings != NULL){
            // if there is some prev. settings object i'll set as a base
            controller.settings = settings;
        }
        
    }
}
-(void)userDidEnterInformation:(SettingsModel *)model {
    //_label.text = info
    settings = model;
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)labelLeftTapped: (UITapGestureRecognizer *)recognizer {
    [self addPoint: _lblLeft other:_lblRight];
}

-(void)labelRightTapped: (UITapGestureRecognizer *)recognizer {
    [self addPoint: _lblRight other:_lblLeft];
}

-(void)addPoint: (UILabel*) label  other:(UILabel *)other{
    NSInteger value = label.text.intValue;
    NSInteger opponent = other.text.intValue;
    
    if(value < 11 || (ABS(opponent - value) <= 1)){
        value += 1;
        label.text = [NSString stringWithFormat:@"%ld", (long)value];
    }
}

@end
