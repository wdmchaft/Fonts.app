//
//  FontsController.m
//  Font
//
//  Created by Tobias Tom on 02.08.09.
//  Copyright 2009 succont e.K.. All rights reserved.
//

#import "FontsController.h"
#import "FontFamilyController.h"

@implementation FontsController

@synthesize systemFonts;

- (NSArray *)systemFonts {
	if (systemFonts == nil) {
		systemFonts = [[UIFont familyNames] retain];
	}
	return systemFonts;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.title = @"Fonts";
}

#pragma mark Table view methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.systemFonts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
    static NSString *CellIdentifier = @"font-cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
    }

	NSString *fontName = [self.systemFonts objectAtIndex:indexPath.row];
	cell.textLabel.font = [UIFont fontWithName:fontName size:17];
	cell.textLabel.text = fontName;
	cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", [[UIFont fontNamesForFamilyName:fontName] count]];
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	FontFamilyController *fontFamily = [[FontFamilyController alloc] initWithStyle:UITableViewStylePlain];
	fontFamily.fontName = [self.systemFonts objectAtIndex:indexPath.row];

	[self.navigationController pushViewController:fontFamily animated:YES];
	[fontFamily release];
}


- (void)dealloc {
	[systemFonts release];

    [super dealloc];
}


@end

