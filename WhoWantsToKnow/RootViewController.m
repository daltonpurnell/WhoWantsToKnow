//
//  RootViewController.m
//  WhoWantsToKnow
//
//  Created by Dalton on 4/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RootViewController.h"
#import "AppSettings.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [AppSettings sharedInstance];
}

-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:viewAppearedNotificationKey object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
