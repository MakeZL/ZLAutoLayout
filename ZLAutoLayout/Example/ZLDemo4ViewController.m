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
    
    // 实例两个View
    UIView *redView = [UIView instanceAutoLayoutView];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [UIView instanceAutoLayoutView];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    // 相对父控件的Left/Top
    [redView autoPinSuperViewDirection:ZLAutoLayoutDirectionLeft];
    [redView autoPinSuperViewDirection:ZLAutoLayoutDirectionTop];
    // 设置redView的宽为100，高为200
    [redView autoSetViewSize:CGSizeMake(100, 200)];
    
    // 设置blueView的宽跟高跟redView相同
    [blueView autoSetViewSizeWidthOrHeight:ZLAutoLayoutSizeHeight ofView:redView];
    [blueView autoSetViewSizeWidthOrHeight:ZLAutoLayoutSizeWidth ofView:redView];
    // 设置blueView的Top与Left相对redView来布局
    [blueView autoPinDirection:ZLAutoLayoutDirectionTop toPinDirection:ZLAutoLayoutDirectionBottom ofView:redView withInset:20];
    [blueView autoPinDirection:ZLAutoLayoutDirectionLeft toPinDirection:ZLAutoLayoutDirectionLeft ofView:redView];
    
}

@end
