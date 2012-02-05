//
//  SimpleTimerAppDelegate.h
//  SimpleTimer
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleTimerViewController;

@interface SimpleTimerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleTimerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleTimerViewController *viewController;

@end

