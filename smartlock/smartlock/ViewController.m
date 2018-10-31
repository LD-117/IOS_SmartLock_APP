//
//  ViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/9.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"



@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = [NSString stringWithFormat:@"view controller"];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(20, 100, 280, 30);
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)push{
    LoginViewController *con = [[LoginViewController alloc]init];
    //[self.navigationController pushViewController:con animated:YES];
    [self presentViewController:con animated:YES completion:nil];
}






@end
