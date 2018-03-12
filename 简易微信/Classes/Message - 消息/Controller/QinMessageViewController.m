//
//  QinMessageViewController.m
//  简易微信
//
//  Created by 秦 on 2018/3/5.
//  Copyright © 2018年 qiang. All rights reserved.
//

#import "QinMessageViewController.h"
#import "QinGroupSearchViewController.h"


@interface QinMessageViewController ()<UITableViewDelegate,UITableViewDataSource>


@property(nonatomic,strong) UITableView *tableView;

@property(nonatomic,strong) UISearchController *searchController;






@end

@implementation QinMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    [self setUpNav];
    [self setUpUI];

}
- (void)setUpUI{
    
    QinGroupSearchViewController *groupSearch = [[QinGroupSearchViewController alloc]init];
    UISearchController *searchVc = [[UISearchController alloc]initWithSearchResultsController:groupSearch];
    [searchVc.searchBar sizeToFit];
    _tableView.tableHeaderView = searchVc.searchBar;
    _searchController = searchVc;
    [searchVc.searchBar.layer setBorderWidth:0.5f];
    searchVc.dimsBackgroundDuringPresentation = YES;
    searchVc.view.backgroundColor = [UIColor whiteColor];
    searchVc.hidesNavigationBarDuringPresentation = YES;
    self.tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, [[UIScreen mainScreen] bounds].size.height -searchVc.searchBar.frame.size.height - searchVc.searchBar.frame.origin.y -8-49);
    
}
- (void)setUpNav{
    
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
//    attr[NSFontAttributeName] = QinNavTitleFont;
    attr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [self.navigationController.navigationBar setTitleTextAttributes:attr];
    
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}

#pragma mark - <UITableViewDataSource>

@end
