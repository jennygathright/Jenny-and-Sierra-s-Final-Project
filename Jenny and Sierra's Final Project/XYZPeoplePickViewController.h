//
//  XYZPeoplePickViewController.h
//  Jenny and Sierra's Final Project
//
//  Created by Sierra Fan on 12/1/13.
//  Copyright (c) 2013 Jenny Gathright. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AddressBookUI/AddressBookUI.h>

#import <AddressBook/AddressBook.h>

@interface XYZPeoplePickViewController : ABPeoplePickerNavigationController
    <UINavigationControllerDelegate,ABPeoplePickerNavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *goButton;

-(IBAction) pushedGo:(id)sender;

@end
