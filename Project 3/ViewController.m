//
//  ViewController.m
//  Project 3
//
//  Created by nathan byarley on 12/9/13.
//  Copyright (c) 2013 nathan byarley. All rights reserved.
//  TERM: 1312
//  AOC1
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//add function that will and return the values
//subtract intBYear (Birth Year) from intTYear (this Year)
- (int)Add:(NSInteger)intThree plus: (NSInteger)intSeven {
    
    //return values based on total of intTYear - intBYear
    return (intThree + intSeven);
}//end intAdd

//compare function BOOL and return TRUE || FALSE
- (BOOL)Compare:(NSInteger)intFive isEqual:(NSInteger)intSeven {
    
    //verify the values are equal
    if (intFive == intSeven) {
        //return value
        return NO;
    } else {
        //return value
        return YES;
    }//end if statement
}//end boolCompare

//Append function
- (NSString*)Append:(NSString*)stringOne appendWith:(NSString*)stringTwo {
    NSMutableString *appendString = [[NSMutableString alloc] initWithString:stringOne];
    NSString *newString = [appendString stringByAppendingString:stringTwo];
    
    //return the string
    return newString;
}

//function to display alert with string
- (void)displayAlertWithString:(NSString*)alertString {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Greetings!" message:alertString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    if (alertView != nil) {
        [alertView show];
    }
}

- (void)viewDidLoad
{
    
    //call append method with two strings
    NSString *stringToAppend = [self Append:@"This is a Test" appendWith:@" If this works then Welcome!"];
    //display string to screen via alert message box
    [self displayAlertWithString:stringToAppend];
    
    //call addition function passing two integer values
    int addition = [self Add:3 plus:7];
    
    NSNumber *total = [[NSNumber alloc] initWithInt:addition];
    
    //creating a custom message
    NSString *addMessage = [NSString stringWithFormat:@"My number is: "];
    //applying the integer to a string for use in the alert message
    NSString *numString = [total stringValue];
    //combining the message and number into one string to be displayed on the alertView.
    NSString *addAppendMessage = [self Append:addMessage appendWith:numString];
    [self displayAlertWithString:addAppendMessage];
    
    //calling the compare fucntion with two integer values
    //variables
    int fullWeek = 7;
    int workWeek = 5;
    BOOL intCompare = [self Compare:fullWeek isEqual:workWeek];
    //combine variables into string to be displayed on screen with alert window
    NSString *compareString = [NSString stringWithFormat:@"There are %d days in a full week and %d days in a typical work week, %@", fullWeek, workWeek, intCompare? @"YES":@"No"];
    //display information on alert window
    [self displayAlertWithString:compareString];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
