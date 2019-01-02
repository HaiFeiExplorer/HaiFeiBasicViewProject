//
//  UIViewController+AddtionItems.h
//  
//
//  Created by HFS on 2019/1/2.
//  Copyright © 2019年 HFS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (AddtionItems)
/*
 关于backBarButtonItem 以及leftBarButtonItem 相关的设置之后继续完善
 
 */

/**
 设置右侧item
 
 @param btnImage 图片
 @param handler 关联的事件
 */
-(void)setRightBtnImage:(UIImage *)btnImage eventHandler:(void (^)(id sender))handler;
/**
 设置左侧item
 设置左侧item会导致默认的测滑返回的事件消失，之后完善
 @param btnImage 图片
 @param handler 关联的事件
 */
-(void)setLeftBtnImage:(UIImage *)btnImage eventHandler:(void (^)(id sender))handler;






@end

NS_ASSUME_NONNULL_END
