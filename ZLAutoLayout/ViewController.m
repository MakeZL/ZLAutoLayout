//
//  ViewController.m
//  ZLAutoLayout
//
//  Created by 张磊 on 14-12-4.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ZLAutoLayout.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (weak,nonatomic) UITableView *tableView;
@property (strong,nonatomic) NSArray *demos;

@end

@implementation ViewController


#pragma mark - getter
- (NSArray *)demos{
    if (!_demos) {
        _demos = @[
                   @"Basic frame transform autoLayout",
                   @"One view EqualSuperView autoLayout",
                   @"One View Add Left && Width/Size Constraint",
                   @"Two View Add Constraint",
                   @"View Add CenterX/Y Constraint",
                   ];
    }
    return _demos;
}

- (UITableView *)tableView{
    if (!_tableView) {
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        tableView.dataSource = self;
        tableView.delegate = self;
        [self.view addSubview:tableView];
        self.tableView = tableView;
        
        [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initView];
}

- (void)initView{
    [self tableView];
}

#pragma mark - <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.demos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.demos[indexPath.row];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Class class =  NSClassFromString([NSString stringWithFormat:@"ZLDemo%zdViewController",indexPath.row+1]);
    UIViewController *vc = [[class alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

@end
