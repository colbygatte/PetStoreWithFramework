//
//  ViewController.m
//  PetStore
//
//  Created by Colby Gatte on 10/18/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NotificationView *notif = [[NotificationView alloc] init];
    [notif makeFrameWidth:100 height:100];
    [self.view addSubview:notif];
    [self.view addGestureRecognizer:notif.swipeUp];
    [self.view addGestureRecognizer:notif.swipeDown];
    
    // Make StepperView frame
    CGRect frame = CGRectMake(0, 0, 350, 75);
    StepperView *stepperView = [[StepperView alloc] initWithFrame:frame];
    stepperView.layer.cornerRadius = 10;
    stepperView.layer.masksToBounds = YES;
    stepperView.numberMax = 10;
    stepperView.numberMin = 0;
    stepperView.plusSignText = @"+";
    stepperView.minusSignText = @"-";
    CGPoint center = self.view.center;
    center.y = 230;
    [stepperView setCenter:center];
    stepperView.backgroundColor = [UIColor colorWithRed:153.0f/255.0f green:195.0f/255.0f blue:216.0f/255.0f alpha:1.0f];
    [self.view addSubview:stepperView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

