//
//  XYZSendMessageViewController.h
//  Jenny and Sierra's Final Project
//
//  Created by Sierra Fan on 12/1/13.
//  Copyright (c) 2013 Jenny Gathright. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MessageUI/MessageUI.h>



@interface XYZSendMessageViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *sendButton;

-(IBAction) pushedSend:(id)sender;

@end
