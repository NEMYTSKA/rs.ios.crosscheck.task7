//
//  MyViewController.m
//  Demo1
//
//  Created by ilia on 05/07/2021.
//  Copyright © 2021 Victor Semenchuk. All rights reserved.
//

#import "MyViewController.h"
#import "NumberBytton.h"

@interface MyViewController () <UITextViewDelegate, UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

@property (weak, nonatomic) IBOutlet UIView *secureView;
@property (weak, nonatomic) IBOutlet UIButton *onOffButton;


@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.button2.layer.cornerRadius = self.button2.frame.size.height / 2;
    self.button3.layer.cornerRadius = self.button3.frame.size.height / 2;
    
    self.loginTextField.delegate = self;
    self.passwordTextField.delegate = self;
    
//    [self.onOffButton addTarget:self
//                        action:@selector(checkAuthDidTap)
//              forControlEvents:UIControlEventTouchUpInside];
    [self.onOffButton addTarget:self
                        action:@selector(checkAuthTouchDown)
              forControlEvents:UIControlEventTouchDown];
    [self.onOffButton addTarget:self
                        action:@selector(checkAuthDragExit)
              forControlEvents:UIControlEventTouchDragExit];

    
    [self setOnOf];
    
    [self.onOffButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.onOffButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    

}

-(void)setOnOf {
    [self.onOffButton.layer setBorderWidth:2];
    [self.onOffButton.layer setBorderColor:[UIColor colorNamed:@"Little Boy Blue"].CGColor];
    [self.onOffButton.layer setCornerRadius:10];
    [self.onOffButton setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
    //[self setFrame:CGRectMake(3, 3, 42, 60)];
    [self.onOffButton setTitleColor:[[UIColor colorNamed:@"Little Boy Blue"] colorWithAlphaComponent:0.5]  forState:UIControlStateHighlighted];
}

- (void)checkAuthTouchDown{
    _onOffButton.backgroundColor = [[UIColor colorNamed:@"Little Boy Blue"] colorWithAlphaComponent:0.2];
}

- (void)checkAuthDragExit{
    _onOffButton.backgroundColor = [UIColor whiteColor];
}


- (IBAction)onOff:(UIButton *)sender {
    
    if (!self.secureView.isHidden) {
        [self.secureView setHidden:YES];
    } else {
        [self.secureView setHidden:NO];
    }
    
    
    
    
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
