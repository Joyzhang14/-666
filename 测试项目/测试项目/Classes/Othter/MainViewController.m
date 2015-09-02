//
//  MainViewController.m
//  测试项目
//
//  Created by mac on 15/9/3.
//  Copyright © 2015年 yy. All rights reserved.
//

#import "MainViewController.h"
#import "UIImage+imgTool.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    //骑行
    UIViewController *qx = [[UIViewController alloc] init];
    [self addChildNavController:qx name:@"骑行" icon:@"qixing"];
    
    //排行
    UIViewController *ph = [[UIViewController alloc] init];
    [self addChildNavController:ph name:@"排行" icon:@"paihang"];
    
    //发现
    UIViewController *fx = [[UIViewController alloc] init];
    [self addChildNavController:fx name:@"发现" icon:@"qixing"];
    
    //我
    UIViewController *meVc = [[UIViewController alloc] init];
    [self addChildNavController:meVc name:@"我" icon:@"wo"];

    
    //设置tabbaritem
    [self setupBarItem];
}

/**
 * 设置tabbaritem
 */
-(void)setupBarItem{

    //设置默认状态
    NSMutableDictionary * dictNormal = [NSMutableDictionary dictionary];
    dictNormal[NSForegroundColorAttributeName] = YYRGBColor(135, 135, 135);
    [[UITabBarItem appearance] setTitleTextAttributes:dictNormal forState:UIControlStateNormal];
    
    //设置选中状态
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    
    //ios7.0 之后 设置tabbar的背景颜色
    UIView *bgView = [[UIView alloc] initWithFrame:self.tabBar.bounds];
    bgView.backgroundColor = YYRGBColor(40, 40, 40);
    [self.tabBar insertSubview:bgView atIndex:0];
    self.tabBar.opaque = YES;

}


//添加子控制器
-(void)addChildNavController:(UIViewController *)vc name:(NSString *)name icon:(NSString *)icon{
    
    UINavigationController * naVc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1.0];
    vc.tabBarItem.image = [[UIImage imageNamed:icon] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    vc.tabBarItem.title = name;
    vc.tabBarItem.selectedImage = [[[UIImage imageNamed:icon] imageWithColor:[UIColor redColor]] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal) ];

    
    [self addChildViewController:naVc];
    
}


@end
