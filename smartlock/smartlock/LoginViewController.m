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
    
    UILabel *_login_label = [[UILabel alloc]initWithFrame:CGRectMake(0,STATUSBAR_HEIGHT, SCREEN_WIDETH/2.0, SCREEN_HEIGHT/10.0)];
    _login_label.text = @"登 陆";
    _login_label.backgroundColor = [UIColor orangeColor];
    _login_label.font = [UIFont systemFontOfSize:16];
    _login_label.textColor = [UIColor blackColor];
    _login_label.textAlignment = NSTextAlignmentCenter;
    _login_label.layer.shadowColor = [UIColor blackColor].CGColor;
    _login_label.layer.shadowOffset = CGSizeMake(20, 10);
    _login_label.layer.shadowOpacity = 0.3;
    
    UIButton *_register_button = [UIButton buttonWithType:UIButtonTypeSystem];
    _register_button.frame = CGRectMake(SCREEN_WIDETH/2.0, STATUSBAR_HEIGHT, SCREEN_WIDETH/2.0, SCREEN_HEIGHT/10.0);
    [_register_button setTitle:@"注 册" forState:UIControlStateNormal];
    [_register_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _register_button.titleLabel.font = [UIFont systemFontOfSize:16];
    _register_button.backgroundColor     = [UIColor blackColor];
    _register_button.alpha = 0.7;
    [_register_button addTarget:self action:@selector(regis) forControlEvents:UIControlEventTouchUpInside];
    
    _loginText              = [[UITextField alloc]initWithFrame:CGRectMake(20, STATUSBAR_HEIGHT+SCREEN_HEIGHT/10.0+80, SCREEN_SIZE.width-40, 30)];
    _loginText.borderStyle  = UITextBorderStyleRoundedRect;
    _loginText.placeholder  = @"username";
    _loginText.leftViewMode = UITextFieldViewModeUnlessEditing;
    _loginText.alpha = 0;
    
    _passwdText              = [[UITextField alloc]initWithFrame:CGRectMake(20, STATUSBAR_HEIGHT+SCREEN_HEIGHT/10.0+130, SCREEN_SIZE.width-40, 30)];
    _passwdText.borderStyle  = UITextBorderStyleRoundedRect;
    _passwdText.placeholder  = @"password";
    _passwdText.leftViewMode = UITextFieldViewModeUnlessEditing;
    _passwdText.alpha = 0;
    
    [self.view addSubview:_login_label];
    [self.view addSubview:_register_button];
    [self.view addSubview:_loginText];
    [self.view addSubview:_passwdText];
    
    UIButton *loginbtn           = [UIButton buttonWithType:UIButtonTypeSystem];
    loginbtn.frame               = CGRectMake(SCREEN_SIZE.width/4-50, STATUSBAR_HEIGHT+SCREEN_HEIGHT/10.0+180, 100, 30);
    [loginbtn setTitle:@"Login" forState:UIControlStateNormal];
    loginbtn.layer.masksToBounds = YES;
    loginbtn.layer.cornerRadius  = 10;
    loginbtn.backgroundColor     = [UIColor cyanColor];
    [loginbtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:loginbtn];
    
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

#pragma mark -
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
    [UIView animateWithDuration:0.5 animations:^{
        self->_loginText.alpha += 1.0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 animations:^{
            self->_passwdText.alpha += 1.0;
        } completion:nil];
    }];
    
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    
    NSLog(@"viewWillAppear");
    [super viewWillAppear:animated];
}

#pragma mark -
- (void)viewWillDisappear:(BOOL)animated {
    self->_loginText.alpha = 0;
    self->_passwdText.alpha = 0;
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    NSLog(@"viewWillDisappear");
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


-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear");
    [super viewDidDisappear:animated];
}

@end
