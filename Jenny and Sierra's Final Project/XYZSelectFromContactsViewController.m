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
    // if the person pressed cancel, don't save changes and go to blacklist
    // if the person pressed done, DO save changes and go to blacklist
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


/*- (BOOL)peoplePickerNavigationController:
(ABPeoplePickerNavigationController *)picker
      shouldContinueAfterSelectingPerson:(ABRecordRef)person
{
    [self presentViewController:picker animated:YES completion:nil];
    return NO;
}*/


- (BOOL)peoplePickerNavigationController:
(ABPeoplePickerNavigationController *)picker
      shouldContinueAfterSelectingPerson:(ABRecordRef)person
                                //property:(ABPropertyID)property
                              //identifier:(ABMultiValueIdentifier)identifier
{
    // TO DO: code for saving the person's contact info
    // add a check for whether there is a telephone number saved there
    ABMultiValueRef number = ABRecordCopyValue(person, kABPersonPhoneProperty);
    ABMultiValueRef FirstName = ABRecordCopyValue(person, kABPersonFirstNameProperty);
    ABMultiValueRef LastName = ABRecordCopyValue(person, kABPersonLastNameProperty);
    NSMutableString *phoneNumber = (__bridge NSMutableString *)ABMultiValueCopyValueAtIndex(number, 0);
    NSMutableString *firstName = (__bridge NSMutableString *)ABMultiValueCopyValueAtIndex(FirstName, 0);
    NSMutableString *lastName = (__bridge NSMutableString *)ABMultiValueCopyValueAtIndex(LastName, 0);
    
    NSLog(@"phoneNumber %@", phoneNumber);
    
    NSMutableDictionary *Blacklist = [[NSMutableDictionary alloc]init];
    
    
    
    
    
    
    
    
    
    
    
    
    
    [self presentViewController:picker animated:YES completion:nil];
    
    
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
