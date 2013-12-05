//
//  EMTViewController.m
//  EMTapp
//
//  Created by Guest Account on 11/16/13.
//  Copyright (c) 2013 Team Awesome. All rights reserved.
//

#import "EMTViewController.h"

@interface EMTViewController ()


@property (strong, nonatomic) NSArray *array;
@end


@implementation EMTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *data = [[NSArray alloc] initWithObjects:@"push meds", @"do compressions", @"apply pressure", nil];
    
    self.array = data;
    
}

#pragma mark Picker Data Source Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [_array count];
    
}

#pragma mark Picker Delegate Methods

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [_array objectAtIndex:row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    NSString *select = [_array objectAtIndex: [_picker selectedRowInComponent:0]];
    NSString *title = [[NSString alloc] initWithFormat:@"You chose to %@!", select];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"Your patient has died... You Suck!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [alert show];
    
}
@end
