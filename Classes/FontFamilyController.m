//
//  FontFamilyController.m
//  Font
//
//  Created by Tobias Tom on 02.08.09.
//  Copyright 2009 succont e.K.. All rights reserved.
//

#import "FontFamilyController.h"


@implementation FontFamilyController

@synthesize fontName;
@synthesize fontFamilies;

- (NSArray *)fontFamilies {
	if (fontFamilies == nil) {
		fontFamilies = [UIFont fontNamesForFamilyName:fontName];
	}
	return fontFamilies;
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	self.title = [NSString stringWithFormat:@"%@s variants", self.fontName];
}

#pragma mark Table view methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.fontFamilies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {    
    static NSString *CellIdentifier = @"fontFamily-cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	NSString *familyName = [self.fontFamilies objectAtIndex:indexPath.row];
	cell.textLabel.font = [UIFont fontWithName:familyName size:17];
	cell.textLabel.text = familyName;
	
    return cell;
}

- (void)dealloc {
	[fontName release];
	[fontFamilies release];

    [super dealloc];
}

@end

