//
//  XYZBlacklistViewController.h
//  Jenny and Sierra's Final Project
//
//  Created by Jenny Gathright on 11/29/13.
//  Copyright (c) 2013 Jenny Gathright. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AddressBookUI/AddressBookUI.h>

#import <AddressBook/AddressBook.h>

@interface XYZBlacklistViewController : UITableViewController
    <UINavigationControllerDelegate,ABPeoplePickerNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *goButton;

-(IBAction) pushedGo:(id)sender;

@end
