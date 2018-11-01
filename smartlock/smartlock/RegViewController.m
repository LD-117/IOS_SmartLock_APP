//
//  RegViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/15.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "RegViewController.h"

@interface RegViewController (){
    UITextField *reg_loginText;
    UITextField *reg_passwdText;
}

@end

@implementation RegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UILabel *label      = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, SCREEN_SIZE.width-40, 60)];
//    label.font          = [UIFont systemFontOfSize:16];
//    label.text          = @"Register Interface";
//    label.textAlignment = NSTextAlignmentCenter;
//    [self.view addSubview:label];
    UILabel *_register_label = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDETH/2.0, STATUSBAR_HEIGHT, SCREEN_WIDETH/2.0, SCREEN_HEIGHT/10.0)];
    _register_label.text = @"注 册";
    _register_label.backgroundColor = [UIColor orangeColor];
    _register_label.font = [UIFont systemFontOfSize:16];
    _register_label.textColor = [UIColor blackColor];
    _register_label.textAlignment = NSTextAlignmentCenter;
    _register_label.layer.shadowColor = [UIColor blackColor].CGColor;
    _register_label.layer.shadowOffset = CGSizeMake(-20, 10);
    _register_label.layer.shadowOpacity = 0.3;
    
    UIButton *_login_button = [UIButton buttonWithType:UIButtonTypeSystem];
    _login_button.frame = CGRectMake(0, STATUSBAR_HEIGHT, SCREEN_WIDETH/2.0, SCREEN_HEIGHT/10.0);
    [_login_button setTitle:@"登 陆" forState:UIControlStateNormal];
    [_login_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _login_button.titleLabel.font = [UIFont systemFontOfSize:16];
    _login_button.backgroundColor     = [UIColor blackColor];
    _login_button.alpha = 0.7;
    [_login_button addTarget:self action:@selector(backlogin) forControlEvents:UIControlEventTouchUpInside];
    
    reg_loginText              = [[UITextField alloc]initWithFrame:CGRectMake(20, STATUSBAR_HEIGHT+SCREEN_HEIGHT/10.0+80, SCREEN_SIZE.width-40, 30)];
    reg_loginText.alpha = 0;
    reg_loginText.borderStyle  = UITextBorderStyleRoundedRect;
    reg_loginText.placeholder  = @"username";
    reg_loginText.leftViewMode = UITextFieldViewModeUnlessEditing;
    
    
    reg_passwdText              = [[UITextField alloc]initWithFrame:CGRectMake(20, STATUSBAR_HEIGHT+SCREEN_HEIGHT/10.0+130, SCREEN_SIZE.width-40, 30)];
    reg_passwdText.alpha = 0;
    reg_passwdText.borderStyle  = UITextBorderStyleRoundedRect;
    reg_passwdText.placeholder  = @"password";
    reg_passwdText.leftViewMode = UITextFieldViewModeUnlessEditing;
    
    [self.view addSubview:_register_label];
    [self.view addSubview:_login_button];
    [self.view addSubview:reg_loginText];
    [self.view addSubview:reg_passwdText];
    
    UIButton *returnbtn = [UIButton buttonWithType:UIButtonTypeSystem];
    returnbtn.frame     = CGRectMake(SCREEN_SIZE.width/2-50, STATUSBAR_HEIGHT+SCREEN_HEIGHT/10.0+220, 100, 30);
    [returnbtn setTitle:@"Return" forState:UIControlStateNormal];
    [returnbtn addTarget:self action:@selector(retu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:returnbtn];
    
//    UIButton *return_root_btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    return_root_btn.frame     = CGRectMake(SCREEN_SIZE.width/2-50, 330, 100, 30);
//    [return_root_btn setTitle:@"Return Root" forState:UIControlStateNormal];
//    [return_root_btn addTarget:self action:@selector(retu_root) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:return_root_btn];
}

-(void)backlogin{
    [self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
}

- (void)viewDidAppear:(BOOL)animated{
    [UIView animateWithDuration:0.5 animations:^{
        self->reg_loginText.alpha += 1.0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 animations:^{
            self->reg_passwdText.alpha += 1.0;
        } completion:nil];
    }];
    [super viewDidAppear:animated];
}

- (void)retu{
    [self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

//-(void)retu_root{
//    [self.navigationController popViewControllerAnimated:YES];
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
