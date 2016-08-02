//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Copyright 2012 comScore. All rights reserved.
//

#import "HelloWorldAppDelegate.h"

#import "HelloWorldViewController.h"
#import <ComScore/CSComScore.h>

@implementation HelloWorldAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Find the comScore initial settings on "Supporting Files/comScore.plist"
    [CSComScore setAppContext];
    [CSComScore setCustomerC2:@"1000001"];
    [CSComScore setPublisherSecret:@"9c455c81a801d3832a2cd281843dff30"];
    [CSComScore setAutoStartEnabled:YES];

    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
