//
//  XYZSelectFromContactsViewController.m
//  Jenny and Sierra's Final Project
//
//  Created by Jenny Gathright on 11/29/13.
//  Copyright (c) 2013 Jenny Gathright. All rights reserved.
//

#import "XYZSelectFromContactsViewController.h"

@interface XYZSelectFromContactsViewController ()

@end

@implementation XYZSelectFromContactsViewController

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
<<<<<<< HEAD
    // if the person pressed cancel, don't save changes and go to blacklist
    // if the person pressed done, DO save changes and go to blacklist
}


- (void)awakeFromNib
=======
    
}

- (IBAction)showPicker:(id)sender
>>>>>>> 8b3c02b667ad526bef3afecbaeee578f7c8a03f3
{
    ABPeoplePickerNavigationController *picker =
    [[ABPeoplePickerNavigationController alloc] init];
    picker.peoplePickerDelegate = self;
    
    [self presentModalViewController:picker animated:YES];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

<<<<<<< HEAD
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
    ABMultiValueRef LastName = ABRecordCopyValue(person, kABPersonLastNameProprty);
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
=======
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
>>>>>>> 8b3c02b667ad526bef3afecbaeee578f7c8a03f3
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
