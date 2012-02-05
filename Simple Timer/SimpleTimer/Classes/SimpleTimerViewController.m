//
//  SimpleTimerViewController.m
//  SimpleTimer
//
//  Created by Raja T S Sekhar on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimpleTimerViewController.h"

@implementation SimpleTimerViewController

@synthesize myTimer;
@synthesize lblMsg;
@synthesize lblDate;
@synthesize lblTime;
@synthesize lblDateTime;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction) startTimer {
	myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(printLog:) userInfo:nil repeats:YES];
	seconds = 1;
}

-(void) printLog:( NSTimer *)theTimer {
	[lblMsg setText:[NSString stringWithFormat:@"Timer running for %d seconds",seconds++]];
	
	NSDate *date = [NSDate date];
	NSString *dateString = [date description];
	// this **dateString** string will have **"yyyy-MM-dd HH:mm:ss +0530"**
	NSArray *arr = [dateString componentsSeparatedByString:@" "];
	// arr will have [0] -> yyyy-MM-dd, [1] -> HH:mm:ss, [2] -> +0530 (time zone)
	
	
	NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
	[dateFormat setDateFormat:@"yyyy-MM-dd"];
	
	NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
	[timeFormat setDateFormat:@"HH:mm:ss"];
	
	NSDate *now = [[NSDate alloc] init];
	
	NSString *theDate = [dateFormat stringFromDate:now];
	NSString *theTime = [timeFormat stringFromDate:now];
	
	[lblDate setText:theDate];
	[lblTime setText:theTime];
	[lblDateTime setText:dateString];
	
	NSLog(@"\n"
		  
          "theDate: |%@| \n"
          "theTime: |%@| \n"
		  "the date and time |%@| \n"
          , theDate, theTime, dateString);
	
	[dateFormat release];
	[timeFormat release];
	[now release];
}

- (IBAction) stopTimer {
	[myTimer invalidate];
	myTimer = nil;
	seconds = 1;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
