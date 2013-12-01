//
//  XYZSelectFromContactsViewController.m
//  Jenny and Sierra's Final Project
//
//  Created by Sierra Fan on 12/1/13.
//  Copyright (c) 2013 Jenny Gathright. All rights reserved.
//

#import "XYZSelectFromContactsViewController.h"

@interface XYZSelectFromContactsViewController ()

@end

@implementation XYZSelectFromContactsViewController

- (IBAction)unwindToBlackList:(UIStoryboardSegue *)segue
{
    // to do link to dest
}

- (void)awakeFromNib
{
    ABPeoplePickerNavigationController * peoplePicker = [[ABPeoplePickerNavigationController alloc] init];
    peoplePicker.peoplePickerDelegate = self;
    // Display only a person's phone and address
    NSArray * displayedItems = [NSArray arrayWithObjects:[NSNumber numberWithInt:kABPersonAddressProperty],
                                [NSNumber numberWithInt:kABPersonPhoneProperty],
                                nil];
    
    peoplePicker.displayedProperties = displayedItems;
    
    [self.view addSubview:peoplePicker.view];
    [self addChildViewController:peoplePicker];
    [peoplePicker didMoveToParentViewController:self];
}


- (BOOL)peoplePickerNavigationController:
(ABPeoplePickerNavigationController *)picker
      shouldContinueAfterSelectingPerson:(ABRecordRef)person
{
    [self presentViewController:picker animated:YES completion:nil];
    return NO;
}

- (BOOL)peoplePickerNavigationController:
(ABPeoplePickerNavigationController *)picker
      shouldContinueAfterSelectingPerson:(ABRecordRef)person
                                property:(ABPropertyID)property
                              identifier:(ABMultiValueIdentifier)identifier
{
    return NO;
}

- (void)peoplePickerNavigationControllerDidCancel:
(ABPeoplePickerNavigationController *)picker
{
    [self presentViewController:picker animated:YES completion:nil];
}


//- (id)initWithStyle:(UITableViewStyle)style

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
