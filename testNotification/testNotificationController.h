//
//  testNotificationController.h
//  testNotification
//
//  Created by on 12/02/07.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <BBWeeAppController-Protocol.h>
#import <MediaPlayer/MediaPlayer.h>
#import "toucesImageView.h"
@interface testNotificationController : NSObject <BBWeeAppController>
{
    UIView *_view;
    UILabel *artist;
    UILabel *title;
    UILabel *album;
    toucesImageView *artworkimage;
   
}

- (UIView *)view;
@property(nonatomic,retain)UILabel *artist;
@property(nonatomic,retain)UILabel *title;
@property(nonatomic,retain)UILabel *album;
@property(nonatomic,retain)toucesImageView *artworkimage;
@end