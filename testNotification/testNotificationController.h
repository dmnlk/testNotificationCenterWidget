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
@interface testNotificationController : NSObject <BBWeeAppController>
{
    UIView *_view;
    UILabel *artist;
    UILabel *title;
    UILabel *album;
    UIImageView *artworkimage;
    UIImage *artwork;
}

- (UIView *)view;
@property(nonatomic,retain)UILabel *artist;
@property(nonatomic,retain)UILabel *title;
@property(nonatomic,retain)UILabel *album;
@property(nonatomic,retain)UIImage *artwork;
@property(nonatomic,retain)UIImageView *artworkimage;
@end