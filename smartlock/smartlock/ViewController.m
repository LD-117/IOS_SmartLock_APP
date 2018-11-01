//
//  ViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/9.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "ViewController.h"
#import "RegViewController.h"
#import "LoginViewController.h"
#import "LeftMenuViewController.h"
#import "MainViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LeftMenuViewController *menuview = [[LeftMenuViewController alloc]init];
    [self addChildViewController:menuview];
    [self.view addSubview:menuview.view];
    
    MainViewController *mainview = [[MainViewController alloc]init];
    UINavigationController *navimainview = [[UINavigationController alloc]initWithRootViewController:mainview];
    [self addChildViewController:navimainview];
    [self.view addSubview:navimainview.view];
    

    
}











@end
