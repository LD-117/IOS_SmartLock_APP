//
//  ViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/9.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 280, 100)];
    label.text = @"Hello World, it is a good idea. So, what do you want to know";
    //label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByTruncatingMiddle;
    label.backgroundColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:23];
    label.textColor = [UIColor yellowColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.shadowColor = [UIColor blackColor];
    label.shadowOffset = CGSizeMake(10, 10);
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //[button setBackgroundImage:[UIImage imageNamed:@"image"] forState:UIControlStateNormal];
    button.frame = CGRectMake(60, 300, 240, 50);
    button.backgroundColor = [UIColor redColor];
    button.layer.shadowColor = [UIColor grayColor].CGColor;
    button.layer.shadowOffset = CGSizeMake(30, 30);
    button.layer.shadowOpacity = 1;
    button.layer.masksToBounds = NO;
    button.layer.cornerRadius = 30;
    //button.layer.borderColor = [UIColor greenColor].CGColor;
    //button.layer.borderWidth = 5;
    //[button setTitleEdgeInsets:UIEdgeInsetsMake(100, 0, 0, 0)];
    [button setTitle:@"点我一下" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchDragExit];
    [self.view addSubview:button];
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(60, 10, 280, 30)];
    UIImageView * imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"image2"]];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"请输入文字";
    textField.textColor = [UIColor redColor];
    textField.font = [UIFont systemFontOfSize:14];
    textField.textAlignment = NSTextAlignmentLeft;
    textField.leftView = imageView;
    textField.leftViewMode = UITextFieldViewModeAlways;
    textField.delegate = self;
    [self.view addSubview:textField];
    
    UISwitch *swi = [[UISwitch alloc]initWithFrame:CGRectMake(70, 400, 100, 40)];
    swi.onTintColor = [UIColor greenColor];
    swi.tintColor = [UIColor whiteColor];
    swi.thumbTintColor = [UIColor grayColor];
    [swi addTarget:self action:@selector(switchChangeColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:swi];
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicator.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    indicator.color = [UIColor blackColor];
    [self.view addSubview:indicator];
    [indicator startAnimating];
}

- (void)changeColor{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}

-(void)switchChangeColor:(UISwitch *)swi{
    if(swi.isOn)
        self.view.backgroundColor = [UIColor redColor];
    else
        self.view.backgroundColor = [UIColor whiteColor];
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    //NSLog(@"%c",[string characterAtIndex:0]);
    if(string.length>0){
        if([string characterAtIndex:0]<'0' || [string characterAtIndex:0]>'9'){
            NSLog(@"请输入数字");
            return NO;
        }
        if(textField.text.length + string.length>11){
            NSLog(@"请输入不超过11位的数字");
            return NO;
        }
    }
    return YES;
}


@end
