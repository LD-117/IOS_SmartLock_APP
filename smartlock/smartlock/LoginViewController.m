//
//  LoginViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/30.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "LoginViewController.h"
#import "RegViewController.h"

@interface LoginViewController (){
    UITextField *_loginText;
    UITextField *_passwdText;
}

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
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
    
    [self.view addSubview:loginbtn];
    
    UIButton *regbtn = [UIButton buttonWithType:UIButtonTypeSystem];
    regbtn.frame = CGRectMake(SCREEN_SIZE.width/4*3-50, 180, 100, 30);
    [regbtn setTitle:@"Register" forState:UIControlStateNormal];
    regbtn.layer.masksToBounds = YES;
    regbtn.layer.cornerRadius  = 10;
    regbtn.backgroundColor     = [UIColor cyanColor];
    [regbtn addTarget:self action:@selector(regis) forControlEvents:UIControlEventTouchUpInside];
    

    [self.view addSubview:regbtn];
    // Do any additional setup after loading the view.
    
//    UIButton *return_root_btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    return_root_btn.frame     = CGRectMake(SCREEN_SIZE.width/2-50, 330, 100, 30);
//    [return_root_btn setTitle:@"Return Root" forState:UIControlStateNormal];
//    [return_root_btn addTarget:self action:@selector(retu_root) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:return_root_btn];
}


//#pragma mark -
//-(void)retu_root{
//    [self.navigationController popViewControllerAnimated:YES];
//}


- (void)regis{
    RegViewController *con = [[RegViewController alloc]init];
    [self presentViewController:con animated:NO completion:nil];
}

#pragma mark -login function, checking password and username
-(void)login{
    [self.view endEditing:YES];
    if(_loginText.text.length == 0){
        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"Warning" message:@"Please enter the username" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action       = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){}];
        [alertCon addAction:action];
        [self presentViewController:alertCon animated:YES completion:nil];
        return;
    }
    if(_passwdText.text.length == 0){
        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"Warning" message:@"Please enter the password" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action       = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){}];
        [alertCon addAction:action];
        [self presentViewController:alertCon animated:YES completion:nil];
        return;
    }
    
    UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"Hint" message:@"Login Success" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action       = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self dismissViewControllerAnimated:YES completion:nil];}]; //*********
    
    [alertCon addAction:action];
    [self presentViewController:alertCon animated:YES completion:nil];
}

#pragma mark -
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

#pragma mark -
- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

#pragma mark -
- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
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
