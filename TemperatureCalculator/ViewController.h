//
//  ViewController.h
//  TemperatureCalculator
//
//  Created by John Daratzikis on 05/03/2017.
//  Copyright © 2017 ioannisdaratzikis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIImageView *tempImage;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UILabel *enterLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;
- (IBAction)calculate:(id)sender;
- (IBAction)switchConversion:(id)sender;

@end

