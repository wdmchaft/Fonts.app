//
//  FontsAppDelegate.h
//  Fonts
//
//  Created by Tobias Tom on 03.08.09.
//  Copyright succont e.K. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *navigation;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigation;

@end

