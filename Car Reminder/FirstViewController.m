//
//  FirstViewController.m
//  Car Reminder
//
//  Created by Zach Lucas on 3/18/14.
//  Copyright (c) 2014 Zach Lucas. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.classon.transform = CGAffineTransformMakeRotation( ( 90 * M_PI ) / 180 );
    self.washington.transform = CGAffineTransformMakeRotation( ( 70 * M_PI ) / 180 );
    
    UIColor * color = [UIColor colorWithRed:255/255.0f green:173/255.0f blue:52/255.0f alpha:1.0f];

    
    NSString *savedValue = [[NSUserDefaults standardUserDefaults]
                            stringForKey:@"carStreetLocation"];
    if ([savedValue  isEqual: @"Washington"]){
        [_washington setBackgroundColor:(color)];
    }
    if ([savedValue  isEqual: @"St Johns West"]){
        [_stjohnswest setBackgroundColor:(color)];
    }
    if ([savedValue  isEqual: @"L West"]){
        [_lincolnplwest setBackgroundColor:(color)];
    }
    if ([savedValue  isEqual: @"THE FAR NORTH"]){
        [_farnorth setBackgroundColor:(color)];
    }
    if ([savedValue  isEqual: @"Classon"]){
        [_classon setBackgroundColor:(color)];
    }
    if ([savedValue  isEqual: @"St Johns East"]){
        [_stjohnspl setBackgroundColor:(color)];
    }
    if ([savedValue  isEqual: @"Lincoln East"]){
        [_lincolnpl setBackgroundColor:(color)];
    }
    if ([savedValue  isEqual: @"Eastern Parkway"]){
        [_easternparkway setBackgroundColor:(color)];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
    NSString *valueToSave = [sender currentTitle];
    [[NSUserDefaults standardUserDefaults]
     setObject:valueToSave forKey:@"carStreetLocation"];
    
    NSLog(@"Button pressed: %@", [sender currentTitle]);
    
    [_washington setSelected:(NO)];
    [_classon setSelected:(NO)];
    [_lincolnpl setSelected:(NO)];
    [_farnorth setSelected:(NO)];
    [_lincolnplwest setSelected:(NO)];
    [_stjohnswest setSelected:(NO)];
    [_stjohnspl setSelected:(NO)];
    [_easternparkway setSelected:(NO)];
    UIColor * defaultColor = [UIColor colorWithRed:196/255.0f green:196/255.0f blue:196/255.0f alpha:1.0f];
    [_washington setBackgroundColor:(defaultColor)];
    [_classon setBackgroundColor:(defaultColor)];
    [_lincolnpl setBackgroundColor:(defaultColor)];
    [_farnorth setBackgroundColor:(defaultColor)];
    [_lincolnplwest setBackgroundColor:(defaultColor)];
    [_stjohnswest setBackgroundColor:(defaultColor)];
    [_stjohnspl setBackgroundColor:(defaultColor)];
    [_easternparkway setBackgroundColor:(defaultColor)];
    UIColor * color = [UIColor colorWithRed:255/255.0f green:173/255.0f blue:52/255.0f alpha:1.0f];
    
    [sender setBackgroundColor:(color)];
    
    [sender setSelected:(YES)];
        
}


@end
