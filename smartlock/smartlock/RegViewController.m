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
//    label.font          = [UIFont systemFontOfSize:23];
//    label.text          = @"Register Interface";
//    label.textAlignment = NSTextAlignmentCenter;
//    [self.view addSubview:label];
    
    reg_loginText              = [[UITextField alloc]initWithFrame:CGRectMake(20, 80, SCREEN_SIZE.width-40, 30)];
    reg_loginText.alpha = 0;
    //reg_loginText.hidden = YES;
    reg_loginText.borderStyle  = UITextBorderStyleRoundedRect;
    reg_loginText.placeholder  = @"username";
    reg_loginText.leftViewMode = UITextFieldViewModeUnlessEditing;
    
    
    reg_passwdText              = [[UITextField alloc]initWithFrame:CGRectMake(20, 130, SCREEN_SIZE.width-40, 30)];
    reg_passwdText.alpha = 0;
    reg_passwdText.hidden = YES;
    reg_passwdText.borderStyle  = UITextBorderStyleRoundedRect;
    reg_passwdText.placeholder  = @"password";
    reg_passwdText.leftViewMode = UITextFieldViewModeUnlessEditing;
    
    
    [self.view addSubview:reg_loginText];
    [self.view addSubview:reg_passwdText];
    
    UIButton *returnbtn = [UIButton buttonWithType:UIButtonTypeSystem];
    returnbtn.frame     = CGRectMake(SCREEN_SIZE.width/2-50, 220, 100, 30);
    [returnbtn setTitle:@"Return" forState:UIControlStateNormal];
    [returnbtn addTarget:self action:@selector(retu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:returnbtn];
    
//    UIButton *return_root_btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    return_root_btn.frame     = CGRectMake(SCREEN_SIZE.width/2-50, 330, 100, 30);
//    [return_root_btn setTitle:@"Return Root" forState:UIControlStateNormal];
//    [return_root_btn addTarget:self action:@selector(retu_root) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:return_root_btn];
}

- (void)viewDidAppear:(BOOL)animated{
    [UIView animateWithDuration:2 animations:^{
        self->reg_loginText.alpha += 1.0;
    } completion:^(BOOL finished) {
        NSLog(@"finish");
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
