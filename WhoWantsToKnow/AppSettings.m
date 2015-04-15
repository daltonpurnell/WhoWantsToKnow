//
//  AppSettings.m
//  WhoWantsToKnow
//
//  Created by Dalton on 4/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "AppSettings.h"

@implementation AppSettings
// This goes in the implementation file
+ (AppSettings *)sharedInstance {
    
    // create an instance of CurrentUser and set it to nil (only gets created once)
    static AppSettings *sharedInstance = nil;
    
    // Never create that token again
    static dispatch_once_t onceToken;
    
    // create this line of code only once
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AppSettings alloc] init];
        
        [sharedInstance registerForNotifications];
    });
    
    // next time we call this method, this is the only code that will do anything
    return sharedInstance;
}

- (void)registerForNotifications{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToViewAppeared:)name:viewAppearedNotificationKey object:nil];
}

-(void)respondToViewAppeared:(NSNotification *)notification {
    
    NSLog(@"Behold, the view has appeared!");
}

- (void)unregisterForNotifications {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:viewAppearedNotificationKey object:nil];
    
}

- (void)dealloc {
    
    [self unregisterForNotifications];
}

@end
