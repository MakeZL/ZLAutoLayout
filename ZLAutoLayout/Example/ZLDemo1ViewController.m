//
//  ZLDemo1ViewController.m
//  ZLAutoLayout
//
//  Created by 张磊 on 14-12-19.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "ZLDemo1ViewController.h"
#import "UIView+ZLAutoLayout.h"

@implementation ZLDemo1ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    /**
     frame trans autoLayout
     */
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(20, 80, 50, 50);
    [redView setAutoLayout:YES];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    blueView.frame = CGRectMake(120, 80, 50, 50);
    [blueView setAutoLayout:YES];
    [self.view addSubview:blueView];

}

@end
