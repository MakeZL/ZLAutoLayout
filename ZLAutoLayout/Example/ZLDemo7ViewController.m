//
//  ZLDemo7ViewController.m
//  ZLAutoLayout
//
//  Created by 张磊 on 15-3-31.
//  Copyright (c) 2015年 com.zixue101.www. All rights reserved.
//

#import "ZLDemo7ViewController.h"

@interface ZLDemo7ViewController ()

@property (strong,nonatomic) UIWebView *webView;
@end

@implementation ZLDemo7ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIWebView *webView = [[UIWebView alloc] init];
    webView.frame = [UIScreen mainScreen].bounds;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.weibo.com/makezl"]]];
    [self.view addSubview:webView];
    self.webView = webView;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
