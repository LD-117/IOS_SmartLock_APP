//
//  ViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/9.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "ViewController.h"
#import "RegViewController.h"


@interface ViewController (){
    UITextField *_loginText;
    UITextField *_passwdText;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _loginText              = [[UITextField alloc]initWithFrame:CGRectMake(20, 80, SCREEN_SIZE.width-40, 30)];
    _loginText.borderStyle  = UITextBorderStyleRoundedRect;
    _loginText.placeholder  = @"username";
    _loginText.leftViewMode = UITextFieldViewModeUnlessEditing;
    
    _passwdText              = [[UITextField alloc]initWithFrame:CGRectMake(20, 130, SCREEN_SIZE.width-40, 30)];
    _passwdText.borderStyle  = UITextBorderStyleRoundedRect;
    _passwdText.placeholder  = @"password";
    _passwdText.leftViewMode = UITextFieldViewModeUnlessEditing;
    
    [self.view addSubview:_loginText];
    [self.view addSubview:_passwdText];
    
    UIButton *loginbtn           = [UIButton buttonWithType:UIButtonTypeSystem];
    loginbtn.frame               = CGRectMake(SCREEN_SIZE.width/4-50, 180, 100, 30);
    [loginbtn setTitle:@"Login" forState:UIControlStateNormal];
    loginbtn.layer.masksToBounds = YES;
    loginbtn.layer.cornerRadius  = 10;
    loginbtn.backgroundColor     = [UIColor cyanColor];
    [loginbtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *regbtn = [UIButton buttonWithType:UIButtonTypeSystem];
    regbtn.frame = CGRectMake(SCREEN_SIZE.width/4*3-50, 180, 100, 30);
    [regbtn setTitle:@"Register" forState:UIControlStateNormal];
    regbtn.layer.masksToBounds = YES;
    regbtn.layer.cornerRadius = 10;
    regbtn.backgroundColor = [UIColor cyanColor];
    [regbtn addTarget:self action:@selector(regis) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:loginbtn];
    [self.view addSubview:regbtn];
}

- (void)regis{
    RegViewController *con = [[RegViewController alloc]init];
    [self presentViewController:con animated:YES completion:nil];
}

-(void)login{
    if(_loginText.text.length == 0){
        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"Warning" message:@"Please enter the username" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){}];
        [alertCon addAction:action];
        [self presentViewController:alertCon animated:YES completion:nil];
        return;
    }
    if(_passwdText.text.length == 0){
        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"Warning" message:@"Please enter the password" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActioregnStyleDefault handler:^(UIAlertAction * _Nonnull action){}];
        [alertCon addAction:action];
        [self presentViewController:alertCon animated:YES completion:nil];
        return;
    }
    
    UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"Hint" message:@"Login Success" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {}];
    [alertCon addAction:action];
    [self presentViewController:alertCon animated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}



@end
