//
//  UINavigationBar+HFSAddtion.h
//
//
//  Created by HFS on 2019/1/2.
//  Copyright © 2019年 HFS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationBar (HFSAddtion)
//判断是否是X
+ (BOOL)is_iPhoneX;
/**
 设置导航栏title的文本相关
 @param font 字体大小
 @param color 字体颜色
 */
- (void)navBarTitleFont:(UIFont *)font titleColor:(UIColor *)color;

/**
 导航栏设置透明度
 @param translucent YES 不透明 NO 透明
 */
- (void)updateTranslucnent:(BOOL)translucent;

//设置导航栏背景色
- (void)navBarBackgroudcolor:(UIColor *)color;

/**
 设置导航栏上画item的 背景色 --会覆盖其上item上图片的颜色
 如果要显示自己设置的item的图片 需要重新设置item的customView
 @param color color
 */
- (void)navBarItemBackgroud:(UIColor *)color;

/**
 导航栏下的那条线是显示还是隐藏
 
 @param hidden YES 隐藏 NO是显示
 */
- (void)showBackgroundSepView:(BOOL)hidden;

/**
 递归获取子视图
 
 @param view view
 @param level level 0 是最底层的view
 */
+(void)printSubview:(UIView *)view andLevel:(int)level;
@end

NS_ASSUME_NONNULL_END
