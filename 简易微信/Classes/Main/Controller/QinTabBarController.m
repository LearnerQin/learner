//
//  QinTabBarController.m
//  简易微信
//
//  Created by 秦 on 2018/3/5.
//  Copyright © 2018年 qiang. All rights reserved.
//

#import "QinTabBarController.h"
#import "QinContactsViewController.h"
#import "QinDisCoverViewController.h"
#import "QinMessageViewController.h"
#import "QinMineViewController.h"
#import "QinNavigationController.h"



@interface QinTabBarController ()

@end

@implementation QinTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
   [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    QinMessageViewController *message = [[QinMessageViewController alloc]init];
    [self addChildVc:message title:@"微信" image:@"tabbar_mainframe" selectedImage:@"tabbar_mainframeHL"];
    QinContactsViewController *contacts = [[QinContactsViewController alloc]init];
    [self addChildVc:contacts title:@"通讯录" image:@"tabbar_contacts" selectedImage:@"tabbar_contactsHL"];
    QinDisCoverViewController *disCover = [[QinDisCoverViewController alloc]init];
    [self addChildVc:disCover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discoverHL"];
    QinMineViewController *mine = [[QinMineViewController alloc]init];
    [self addChildVc:mine title:@"我的" image:@"tabbar_me" selectedImage:@"tabbar_meHL"];
    [self setupTabBar];
    
}
-  (void)setupTabBar{
    
    UIView *bgView = [[UIView alloc]initWithFrame:self.tabBar.bounds];
    bgView.backgroundColor = [UIColor whiteColor];
    [self.tabBar insertSubview:bgView atIndex:0];
    self.tabBar.opaque = YES;
    
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleDefault;
}
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    
    childVc.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = QinColor(123, 123, 123);
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = QinColor(26, 178, 10);
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    QinNavigationController *nav = [[QinNavigationController alloc]initWithRootViewController:childVc];
    [UINavigationBar appearance].barTintColor = QinColor(54, 53, 57);
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    //    attr[NSFontAttributeName] = QinNavTitleFont;
    attr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [nav.navigationBar setTitleTextAttributes:attr];
    [self addChildViewController:nav];
    
}


@end
