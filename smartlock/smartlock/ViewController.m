//
//  ViewController.m
//  smartlock
//
//  Created by CHARLES on 2018/10/9.
//  Copyright © 2018年 EagelB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 280, 100)];
    label.text = @"Hello World, it is a good idea. So, what do you want to know";
    //label.numberOfLines = 0;
    label.lineBreakMode = //NSLineBreakByClipping;
                            //NSLineBreakByCharWrapping;
                            //NSLineBreakByWordWrapping;
                            //NSLineBreakByTruncatingHead;
                            //NSLineBreakByTruncatingTail;
                            NSLineBreakByTruncatingMiddle;
    label.backgroundColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:23];
    label.textColor = [UIColor yellowColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.shadowColor = [UIColor blackColor];
    label.shadowOffset = CGSizeMake(10, 10);
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(60, 300, 240, 30);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"点我一下" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)changeColor{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}


@end
