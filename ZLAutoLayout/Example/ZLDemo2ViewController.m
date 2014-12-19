//
//  ZLDemo2ViewController.m
//  ZLAutoLayout
//
//  Created by 张磊 on 14-12-19.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "ZLDemo2ViewController.h"
#import "UIView+ZLAutoLayout.h"

@implementation ZLDemo2ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIView *greenView = [UIView instanceAutoLayoutView];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    [greenView autoEqualToSuperViewAutoLayouts];

}

@end
