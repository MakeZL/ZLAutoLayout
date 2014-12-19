//
//  ZLDemo3ViewController.m
//  ZLAutoLayout
//
//  Created by 张磊 on 14-12-19.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "ZLDemo3ViewController.h"
#import "UIView+ZLAutoLayout.h"

@implementation ZLDemo3ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIView *greenView = [UIView instanceAutoLayoutView];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    [greenView autoPinSuperViewDirection:ZLAutoLayoutDirectionLeft withInset:20];
    [greenView autoPinDirection:ZLAutoLayoutDirectionTop toPinDirection:ZLAutoLayoutDirectionTop ofView:self.view withInset:100];
    
    [greenView autoSetViewSize:CGSizeMake(100, 200)];

}

@end
