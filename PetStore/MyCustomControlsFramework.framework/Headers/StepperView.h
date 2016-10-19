//
//  StepperView.h
//  MyCustomControlsFramework
//
//  Created by Colby Gatte on 10/18/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PrettyButton.h"
#import "PrettyLabel.h"

// Protocol for StepperViewDelegate
//
@protocol StepperViewDelegate <NSObject>
-(void) stepperViewValueDidChange:(int) number direction:(NSString *) direction;
@end


//
//
@interface StepperView : UIView
{
    PrettyLabel *displayLabel;
}
@property (nonatomic, weak) id<StepperViewDelegate> delegate;
@property (nonatomic, assign) int numberMax;
@property (nonatomic, assign) int numberMin;
@property (nonatomic, strong) NSString *plusSignText;
@property (nonatomic, strong) NSString *minusSignText;

@end
