//
//  HFSNextViewController.m
//  HFSBasicViewProject
//
//  Created by HFS on 2019/1/2.
//  Copyright © 2019年 HFS. All rights reserved.
//

#import "HFSNextViewController.h"
#import "UINavigationBar+HFSAddtion.h"
#import "UIViewController+AddtionItems.h"

@interface HFSNextViewController ()

@end

@implementation HFSNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"next";
    
    //这里设置 会在同一个navigationController的视图上都起作用！
//    [self.navigationController.navigationBar  navBarBackgroudcolor:[UIColor lightGrayColor]];
//    [self.navigationController.navigationBar  navBarItemBackgroud:[UIColor darkGrayColor]];
//    [self.navigationController.navigationBar  navBarTitleFont:[UIFont systemFontOfSize:18] titleColor:[UIColor redColor]];
    
    
     [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"home_infor_Navbg"] forBarMetrics:UIBarMetricsDefault];
    
    __weak HFSNextViewController *weakSelf = self;
    [self setRightBtnImage:[UIImage imageNamed:@"findDocTabbarSelectedBg"] eventHandler:^(id  _Nonnull sender) {
        NSLog(@"右侧aitem dclick");
    }];
//    [self setLeftBtnImage:[UIImage imageNamed:@"navBackBg"] eventHandler:^(id  _Nonnull sender) {
//        [weakSelf.navigationController popViewControllerAnimated:YES];
//        NSLog(@"--侧aitem dclick");
//
//    }];

}




@end
