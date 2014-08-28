//
//  ViewController.h
//  mark
//
//  Created by Mubashir Meddekar on 8/28/14.
//  Copyright (c) 2014 Hibrise Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *mark1;
@property (strong, nonatomic) IBOutlet UITextField *mark2;
@property (strong, nonatomic) IBOutlet UITextField *mark3;
@property (strong, nonatomic) IBOutlet UITextField *mark4;
- (IBAction)save:(id)sender;
- (IBAction)calc:(id)sender;

- (IBAction)view:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *mark5;
@property (strong, nonatomic) IBOutlet UILabel *total;
@property (strong, nonatomic) IBOutlet UILabel *average;
@property (strong, nonatomic) IBOutlet UITextView *display;
@end
