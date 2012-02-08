//
//  toucesImageView.m
//  testNotification
//
//  Created by on 12/02/09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "toucesImageView.h"

@implementation toucesImageView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event  
{ 
    UIAlertView *alert =
    [[UIAlertView alloc] initWithTitle:@"お知らせ" message:@"完了しました"
                              delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
    [alert show];
    NSURL* url = [NSURL URLWithString:@"music:"];
    [[UIApplication sharedApplication] openURL:url];
   
}

@end
