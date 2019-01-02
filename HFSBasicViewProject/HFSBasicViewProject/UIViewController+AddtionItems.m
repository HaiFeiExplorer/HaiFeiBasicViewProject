//
//  UIViewController+AddtionItems.m
//  MyCppDemo
//
//  Created by HFS on 2019/1/2.
//  Copyright © 2019年 HFS. All rights reserved.
//

#import "UIViewController+AddtionItems.h"
#import "UIControl+BlocksKit.h"


@implementation UIViewController (AddtionItems)

/**
 设置右侧item
 
 @param btnImage 图片
 @param handler 关联的事件
 */
-(void)setRightBtnImage:(UIImage *)btnImage eventHandler:(void (^)(id sender))handler
{
    UIButton* btn       = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.exclusiveTouch  = YES;
    btn.frame           = CGRectMake(0, 0, 40, 40);
    btn.backgroundColor = [UIColor clearColor];
    [btn setImage:btnImage forState:UIControlStateNormal];
    [btn setImage:btnImage forState:UIControlStateHighlighted];

    [btn bk_addEventHandler:^(id sender) {
        handler(btn);
    } forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];

}

/**
 设置左侧item
设置左侧item会导致默认的测滑返回的事件消失，之后完善
 @param btnImage 图片
 @param handler 关联的事件
 */
-(void)setLeftBtnImage:(UIImage *)btnImage eventHandler:(void (^)(id sender))handler
{
    UIButton* btn       = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.exclusiveTouch  = YES;
    btn.frame           = CGRectMake(0, 0, 40, 40);
    btn.backgroundColor = [UIColor clearColor];
    [btn setImage:btnImage forState:UIControlStateNormal];
    [btn setImage:btnImage forState:UIControlStateHighlighted];

    [btn bk_addEventHandler:^(id sender) {
        handler(btn);
    } forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];

}

@end
