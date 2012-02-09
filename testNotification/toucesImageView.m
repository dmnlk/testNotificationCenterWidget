//
//  toucesImageView.m
//  testNotification
//
//  Created by on 12/02/09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "toucesImageView.h"

@implementation toucesImageView

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(BOOL)canBecomeFirstResponder{
    return YES;
}

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event  
{ 
    NSURL* url = [NSURL URLWithString:@"music:"];
    [[UIApplication sharedApplication] openURL:url];
   
}

@end
