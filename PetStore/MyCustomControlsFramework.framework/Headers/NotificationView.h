//
//  NotificationView.h
//  MyCustomControlsFramework
//
//  Created by Colby Gatte on 10/18/16.
//  Copyright © 2016 colbyg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationView : UIView
- (void) makeFrameWidth:(int) width height:(int) height;

@property (nonatomic, assign) int width;
@property (nonatomic, assign) int height;
@property (nonatomic, strong) UISwipeGestureRecognizer *swipeUp;
@property (nonatomic, strong) UISwipeGestureRecognizer *swipeDown;

@end
