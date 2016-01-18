//
//  ViewController.h
//  TipCalcul
//
//  Created by Vidya Ramamurthy on 22/12/15.
//  Copyright © 2015 BridgeLabz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lable;



- (IBAction)buttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)valueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *currentTip;
@end

