//
//  ZLDemo4ViewController.m
//  ZLAutoLayout
//
//  Created by 张磊 on 14-12-19.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "ZLDemo4ViewController.h"
#import "UIView+ZLAutoLayout.h"

@implementation ZLDemo4ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIView *redView = [UIView instanceAutoLayoutView];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [UIView instanceAutoLayoutView];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    [redView autoPinSuperViewDirection:ZLAutoLayoutDirectionLeft];
    [redView autoPinSuperViewDirection:ZLAutoLayoutDirectionTop];
    [redView autoSetViewSize:CGSizeMake(100, 200)];
    
    [blueView autoSetViewSizeWidthOrHeight:ZLAutoLayoutSizeHeight ofView:redView];
    [blueView autoSetViewSizeWidthOrHeight:ZLAutoLayoutSizeWidth ofView:redView];
    [blueView autoPinDirection:ZLAutoLayoutDirectionTop toPinDirection:ZLAutoLayoutDirectionBottom ofView:redView withInset:20];
    [blueView autoPinDirection:ZLAutoLayoutDirectionLeft toPinDirection:ZLAutoLayoutDirectionLeft ofView:redView];
    
}

@end
