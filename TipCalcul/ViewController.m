//
//  ViewController.m
//  TipCalcul
//
//  Created by Vidya Ramamurthy on 22/12/15.
//  Copyright © 2015 BridgeLabz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lable;
@synthesize textField;
@synthesize slider;
@synthesize currentTip;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [slider setMaximumValue:0.4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
 
}


- (IBAction)buttonPressed:(id)sender {
    //    NSString *userInput=[textField text];
    //    NSString *newString=[[NSString alloc]initWithFormat:@"hellow %@",userInput];
    // [lable setText:@"This is app"];
    //    [lable setText:[textField text]];
    // [lable setText:newString];
    
    NSString *userInput=[textField text];
    
    if([userInput length]==0)
    {
        //[lable setText:@"Enter Amount"];
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Bill amount "
                                                                       message:@"Must enter some amount"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        
        
        UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    else
    {
        float billAmount=[userInput floatValue];
        float tipAmout=[slider value]*billAmount;
        //float tipAmout=[slider floatValue];
        NSString *tipString=[[NSString alloc]initWithFormat:@"Total is  %1.2f",tipAmout];
        [lable setText:tipString];
    }
}
- (IBAction)valueChanged:(id)sender {
    
    NSString *currentTipString=[[NSString alloc]initWithFormat:@"%1.2f %%",[slider value]*100];
    [currentTip setText:currentTipString];
}

@end
