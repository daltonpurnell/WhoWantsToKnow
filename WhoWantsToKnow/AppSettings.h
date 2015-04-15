//
//  AppSettings.h
//  WhoWantsToKnow
//
//  Created by Dalton on 4/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>


static NSString *const viewAppearedNotificationKey = @"viewAppearedNotification";


@interface AppSettings : NSObject

+ (AppSettings *)sharedInstance;

@end
