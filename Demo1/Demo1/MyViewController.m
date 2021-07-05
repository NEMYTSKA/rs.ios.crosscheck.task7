//
//  MyViewController.m
//  Demo1
//
//  Created by ilia on 05/07/2021.
//  Copyright © 2021 Victor Semenchuk. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController () <UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *authoriseTextField;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;



@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginTextField.layer.cornerRadius = 5.0;
    self.passwordTextField.layer.cornerRadius = 5.0;
    
    self.button1.layer.borderColor = UIColor.blackColor.CGColor;
 
    self.button1.layer.cornerRadius = self.button1.frame.size.height / 2;
    self.button2.layer.cornerRadius = self.button2.frame.size.height / 2;
    self.button3.layer.cornerRadius = self.button3.frame.size.height / 2;
    
    self.loginTextField.delegate = self;
    self.passwordTextField.delegate = self;

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [self.passwordTextField becomeFirstResponder];
}





- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {

    return ![string containsString:@"a"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
