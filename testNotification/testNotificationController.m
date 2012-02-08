//
//  testNotificationController.m
//  testNotification
//
//  Created by  on 12/02/07.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "testNotificationController.h"

@implementation testNotificationController
@synthesize artist;
@synthesize album;
@synthesize title;
@synthesize artwork;
@synthesize artworkimage;
-(id)init
{
	if ((self = [super init]))
	{
	}

	return self;
}

-(void)dealloc
{
	[_view release];
	[super dealloc];
}

- (UIView *)view
{
	if (_view == nil)
	{
		_view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, 316, 71)];

		UIImage *bg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/testNotification.bundle/WeeAppBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:71];
		UIImageView *bgView = [[UIImageView alloc] initWithImage:bg];
		bgView.frame = CGRectMake(0, 0, 316, 71);
		[_view addSubview:bgView];
		[bgView release];
        
        /*
		UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 316, 71)];
        
		lbl.backgroundColor = [UIColor clearColor];
		lbl.textColor = [UIColor whiteColor];
		lbl.text = now_dateStr;
		lbl.textAlignment = UITextAlignmentCenter;
		[_view addSubview:lbl];
		[lbl release];
        */
        
        artist =[[UILabel alloc]initWithFrame:CGRectMake(70, 5, 200, 20)];
        UIFont *font =[artist font];
        UIFont *newFont = [UIFont fontWithName:[font fontName] size:12.0];
        [artist setFont:newFont];
        artist.backgroundColor = [UIColor clearColor];
        artist.textColor=[UIColor whiteColor];
        artist.text=@"";
        artist.textAlignment=UITextAlignmentCenter;
        title =[[UILabel alloc]initWithFrame:CGRectMake(70, 25, 200, 31)];
        newFont = [UIFont fontWithName:[font fontName] size:15.0];
        [title setFont:newFont];
        title.backgroundColor = [UIColor clearColor];
        title.textColor=[UIColor whiteColor];
        title.text=@"";
        title.textAlignment=UITextAlignmentCenter;
        album =[[UILabel alloc]initWithFrame:CGRectMake(70, 54, 200, 20)];
        newFont = [UIFont fontWithName:[font fontName] size:12.0];
        [album setFont:newFont];
        album.backgroundColor = [UIColor clearColor];
        album.textColor=[UIColor whiteColor];
        album.text=@"";
        album.textAlignment=UITextAlignmentCenter;
        [_view addSubview:artist];
        [artist release];
        [_view addSubview:title];
        [title release];
        [_view addSubview:album];
        [album release];
        artworkimage=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 70, 70)];
        [_view addSubview:artworkimage];
        [artworkimage release];
	}

	return _view;
}

- (float)viewHeight
{   
        return 71.0f;
    
}
- (void)viewWillAppear
{   
    MPMusicPlayerController *player = [MPMusicPlayerController iPodMusicPlayer];
    NSString *nowplayingsongArtist =[player.nowPlayingItem valueForProperty:MPMediaItemPropertyArtist];
    NSString *nowPlayinSongTitle =[player.nowPlayingItem valueForProperty:MPMediaItemPropertyTitle];
    NSString *nowPlayingSongAlbum =[player.nowPlayingItem valueForProperty:MPMediaItemPropertyAlbumTitle];
    MPMediaItemArtwork *artworkMP = [player.nowPlayingItem valueForProperty:MPMediaItemPropertyArtwork];
    artworkimage.image=[artworkMP imageWithSize:artworkimage.frame.size];
    artist.text=nowplayingsongArtist;
    title.text=nowPlayinSongTitle;
    album.text=nowPlayingSongAlbum;
 
}


@end