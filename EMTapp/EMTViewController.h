//
//  EMTViewController.h
//  EMTapp
//
//  Created by Guest Account on 11/16/13.
//  Copyright (c) 2013 Team Awesome. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EMTViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
- (IBAction)buttonPressed:(id)sender;

@end
