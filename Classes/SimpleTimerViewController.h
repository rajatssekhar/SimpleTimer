//
//  SimpleTimerViewController.h
//  SimpleTimer
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTimerViewController : UIViewController {

	IBOutlet UILabel *lblMsg;
	IBOutlet UILabel *lblDate;
	IBOutlet UILabel *lblTime;
	IBOutlet UILabel *lblDateTime;
	NSTimer *myTimer;
	int seconds;
	
}

@property (nonatomic, retain) NSTimer *myTimer;
@property (nonatomic, retain)  UILabel *lblMsg;
@property (nonatomic, retain)  UILabel *lblDate;
@property (nonatomic, retain)  UILabel *lblTime;
@property (nonatomic, retain)  UILabel *lblDateTime;

- (IBAction) startTimer;
- (IBAction) stopTimer;

@end

