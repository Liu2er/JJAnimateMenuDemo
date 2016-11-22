//
//  JJMainViewController.m
//  JJAnimateMenuDemo
//
//  Created by 刘佳杰 on 16/11/21.
//  Copyright © 2016年 Jiajie.Liu. All rights reserved.
//

#import "JJMainViewController.h"
#import "JJAnimateMenuViewController.h"

@interface JJMainViewController () <JJAnimateMenuDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation JJMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(100, 100, 200, 200) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.tableView];
    
    JJAnimateMenuViewController *animateMenuVC = [[JJAnimateMenuViewController alloc] initWithAnimateView:self.tableView];
    animateMenuVC.delegate = self;
    [self addChildViewController:animateMenuVC];
    [self.view addSubview:animateMenuVC.view];
    
}

#pragma mark - JJAnimateMenuDelegate

-(void)menuDidOpen{
    NSLog(@"Menu did Open");
}

-(void)menuDidClose{
    NSLog(@"Menu did Close");
}

@end
