//
//  FontsAppDelegate.m
//  Fonts
//
//  Created by Tobias Tom on 03.08.09.
//  Copyright succont e.K. 2009. All rights reserved.
//

#import "FontsAppDelegate.h"
#import "FontsController.h"

@implementation FontsAppDelegate

@synthesize window;
@synthesize navigation;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	FontsController *fonts = [[FontsController alloc] initWithStyle:UITableViewStylePlain];
	navigation = [[UINavigationController alloc] initWithRootViewController:fonts];
	
	[window addSubview:navigation.view];
    [window makeKeyAndVisible];
	
	[fonts release];
}


- (void)dealloc {
    [window release];
	[navigation release];
	
    [super dealloc];
}

@end
