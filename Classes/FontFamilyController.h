//
//  FontFamilyController.h
//  Font
//
//  Created by Tobias Tom on 02.08.09.
//  Copyright 2009 succont e.K.. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FontFamilyController : UITableViewController {
	NSString *fontName;
	NSArray *fontFamilies;
}

@property (nonatomic, retain) NSString *fontName;
@property (nonatomic, retain) NSArray *fontFamilies;

@end
