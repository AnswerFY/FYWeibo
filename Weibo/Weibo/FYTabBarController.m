//
//  FYTabBarController.m
//  111
//
//  Created by 冯毅 on 16/11/7.
//  Copyright © 2016年 冯毅. All rights reserved.
//

#import "FYTabBarController.h"

@interface FYTabBarController ()

@end

@implementation FYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //  首页
    UITableViewController *homeController = [[UITableViewController alloc]init];
    [self addChildViewController:homeController imageName:@"tabbar_home" title:@"首页"];
    //  消息
    UITableViewController *msgController = [[UITableViewController alloc]init];
    [self addChildViewController:msgController imageName:@"tabbar_message_center" title:@"消息"];
    //  发现
    UITableViewController *discoverController = [[UITableViewController alloc]init];
    [self addChildViewController:discoverController imageName:@"tabbar_discover" title:@"发现"];
    //  我
    UITableViewController *profileController = [[UITableViewController alloc]init];
    [self addChildViewController:profileController imageName:@"tabbar_profile" title:@"我"];
    
}

- (void)addChildViewController:(UIViewController *)childController imageName:(NSString *)imageName title:(NSString *)title{
    //  设置选中与未选中的图片
    childController.tabBarItem.image = [[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",imageName]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //  设置标题
    childController.tabBarItem.title = title;
    
    //  指定属性
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor orangeColor];
    //  制定选中状态下的文字颜色
    [childController.tabBarItem setTitleTextAttributes:dict forState:UIControlStateSelected];
    
    [self addChildViewController:childController];
    
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
