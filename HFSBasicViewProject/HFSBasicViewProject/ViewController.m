//
//  ViewController.m
//  HFSBasicViewProject
//
//  Created by HFS on 2018/12/21.
//  Copyright © 2018年 HFS. All rights reserved.
//

#import "ViewController.h"
#import "HFSNextViewController.h"

@interface ViewController ()
{
    
    __weak IBOutlet UITableView *mainTabelView;
    
    
    
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"主页";
}

- (IBAction)nextButttonAction:(UIButton *)sender {
    HFSNextViewController *nextVC = [[HFSNextViewController alloc]init];
    [self.navigationController pushViewController:nextVC animated:YES];
    
}


@end
