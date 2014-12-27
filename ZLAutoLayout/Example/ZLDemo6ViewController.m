//
//  ZLDemo6ViewController.m
//  ZLAutoLayout
//
//  Created by 张磊 on 14-12-27.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "ZLDemo6ViewController.h"
#import "UIView+ZLAutoLayout.h"

@interface ZLDemo6ViewController ()
@property (weak,nonatomic) UIView *redView;
@end

@implementation ZLDemo6ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [UIView instanceAutoLayoutView];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    self.redView = redView;
    
    [redView autoSetAlignToSuperView:ZLAutoLayoutAlignHorizontal];
    [redView autoSetAlignToSuperView:ZLAutoLayoutAlignVertical];
    [redView autoSetViewSize:CGSizeMake(150, 150)];
    [redView layoutIfNeeded];
    
    [self startAnimation];
}

- (void)startAnimation{
    
    [self.redView removeAutoLayout];
    
    [self.redView autoSetAlignToSuperView:ZLAutoLayoutAlignHorizontal];
    [self.redView autoSetAlignToSuperView:ZLAutoLayoutAlignVertical];
    [self.redView autoSetViewSize:CGSizeMake(150, 150)];
    
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [weakSelf.redView layoutIfNeeded];
    } completion:^(BOOL finished) {
        [weakSelf startAnimation2];
    }];
}

- (void)startAnimation2{
    
    [self.redView removeAutoLayout];
    
    [self.redView autoSetAlignToSuperView:ZLAutoLayoutAlignHorizontal];
    [self.redView autoSetAlignToSuperView:ZLAutoLayoutAlignVertical];
    [self.redView autoSetViewSize:CGSizeMake(300, 300)];
    
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [weakSelf.redView layoutIfNeeded];
    } completion:^(BOOL finished) {
        [weakSelf startAnimation];
    }];
}

@end
