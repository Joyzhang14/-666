//
//  MainViewController.m
//  测试项目
//
//  Created by mac on 15/9/3.
//  Copyright © 2015年 yy. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //骑行
    UIViewController *qx = [[UIViewController alloc] init];
    [self addChildNavController:qx];
    
    //排行
    UIViewController *ph = [[UIViewController alloc] init];
    [self addChildNavController:ph];
    
    //发现
    UIViewController *fx = [[UIViewController alloc] init];
    [self addChildNavController:fx];
    
    //我
    UIViewController *meVc = [[UIViewController alloc] init];
    [self addChildNavController:meVc];
}


//添加子控制器
-(void)addChildNavController:(UIViewController *)vc{
    
    UINavigationController * naVc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0];
    
    [self addChildViewController:naVc];
    
}


@end
