//
//  RegViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/15.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "RegViewController.h"

@interface RegViewController ()

@end

@implementation RegViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label      = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, SCREEN_SIZE.width-40, 60)];
    label.font          = [UIFont systemFontOfSize:23];
    label.text          = @"Register Interface";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
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

- (void)retu{
    [self dismissViewControllerAnimated:YES completion:nil];
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
