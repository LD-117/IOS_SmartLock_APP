//
//  MainViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/11/1.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "MainViewController.h"
#import "LoginViewController.h"
#import "RegViewController.h"

@interface MainViewController ()

@property (assign,nonatomic)BOOL isMenuOpen;
@end


@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"view controller";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.view.layer.shadowColor = [UIColor blackColor].CGColor;
    self.navigationController.view.layer.shadowOffset = CGSizeMake(-10, 0);
    self.navigationController.view.layer.shadowOpacity = 0.15;
    self.navigationController.view.layer.shadowRadius = 10;
    
    UIBarButtonItem *_menubutton = [[UIBarButtonItem alloc]initWithTitle:@"菜单" style:UIBarButtonItemStylePlain target:self action:@selector(openCloseMenu)];
    self.navigationItem.leftBarButtonItem = _menubutton;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(20, 100, 280, 30);
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}

- (void)openCloseMenu{
    
        UIView *mask = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDETH, SCREEN_HEIGHT)];
        mask.backgroundColor = [UIColor blackColor];
        mask.alpha = 0;
        [self.view addSubview:mask];
    
    [UIView animateWithDuration:0.5 animations:^{
        if(!self.isMenuOpen){
            self.navigationController.view.transform = CGAffineTransformMakeTranslation(320, 0);
        }else{
            self.navigationController.view.transform = CGAffineTransformMakeTranslation(0, 0);
        }
    } completion:^(BOOL finished) {
        self.isMenuOpen = !self.isMenuOpen;
        [mask removeFromSuperview];
    }];
}

-(void)push{
    LoginViewController *con = [[LoginViewController alloc]init];
    //[self.navigationController pushViewController:con animated:YES];
    [self presentViewController:con animated:YES completion:nil];
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
