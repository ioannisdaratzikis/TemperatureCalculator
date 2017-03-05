//
//  ViewController.m
//  TemperatureCalculator
//
//  Created by John Daratzikis on 05/03/2017.
//  Copyright © 2017 ioannisdaratzikis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calculate:(id)sender {
    
    [self resignFirstResponder];
    
    if (self.segControl.selectedSegmentIndex == 0){
    
        double f = [self.textField.text doubleValue];
        double c = (f-32)/1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f C",c];
        
        if (c > 120){
        
            self.tempImage.image = [UIImage imageNamed:@"Temp9.png"];
        }else if (c > 100){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp8.png"];
        }else if (c > 80){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp7.png"];
        }else if (c > 60){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp6.png"];
        }else if (c > 40){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp5.png"];
        }else if (c > 20){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp4.png"];
        }else if (c > 0){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp3.png"];
        }else if (c > -20){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp2.png"];
        }else if (c < -20){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp1.png"];
        }
    }
    
    if (self.segControl.selectedSegmentIndex == 1){
        
        double c = [self.textField.text doubleValue];
        double f = c*1.8+32;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f f",f];
        
        if (f > 160){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp9.png"];
        }else if (f > 140){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp8.png"];
        }else if (f > 120){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp7.png"];
        }else if (f > 100){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp6.png"];
        }else if (f > 80){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp5.png"];
        }else if (f > 60){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp4.png"];
        }else if (f > 40){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp3.png"];
        }else if (f > 20){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp2.png"];
        }else if (f < 20){
            
            self.tempImage.image = [UIImage imageNamed:@"Temp1.png"];
        }
    }
}

- (IBAction)switchConversion:(id)sender {

    if (self.segControl.selectedSegmentIndex == 0){
    
        self.enterLabel.text = @"Enter Fehrenheit";
        self.textField.text = @"";
        self.outputLabel.text = @"0 C";
    
    }else if (self.segControl.selectedSegmentIndex == 1){
    
        self.enterLabel.text = @"Enter Celsius";
        self.textField.text = @"";
        self.outputLabel.text = @"0 F";
    }
    
}

@end
