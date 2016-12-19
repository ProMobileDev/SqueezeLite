//
//  AppDelegate+Connect.h
//  SqueezeLite
//
//  Created by Leonid on 11/18/16.
//  Copyright © 2016 Leonid. All rights reserved.
//

#import "AppDelegate.h"
#import <Foundation/Foundation.h>
#import <sqlite3.h>
#include "Logi/squeezelite.h"
#include <signal.h>
#define TITLE "Squeezelite " VERSION ", Copyright 2012-2015 Adrian Smith, 2015-2016 Ralph Irving."

#define CODECS_BASE "flac,pcm,mp3,ogg,aac"
#if FFMPEG
#define CODECS_FF   ",wma,alac"
#else
#define CODECS_FF   ""
#endif
#if DSD
#define CODECS_DSD  ",dsd"
#else
#define CODECS_DSD  ""
#endif
#define CODECS_MP3  " (mad,mpg for specific mp3 codec)"

#define CODECS CODECS_BASE CODECS_FF CODECS_DSD CODECS_MP3
@interface Connect : NSObject{
    
}

- (void) main:(int) argc argv:(char**) argv;
- (void) usuage:(const char *) args;
- (void) license;
- (void) sighandler :(int) signum;
@end
