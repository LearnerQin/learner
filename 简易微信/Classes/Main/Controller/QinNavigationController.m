//
//  QinNavigationController.m
//  简易微信
//
//  Created by 秦 on 2018/3/5.
//  Copyright © 2018年 qiang. All rights reserved.
//

#import "QinNavigationController.h"

@interface QinNavigationController ()

@end

@implementation QinNavigationController

+(void)initialize{
    
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15.0];
    [item setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.viewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    
    
    
}




@end
