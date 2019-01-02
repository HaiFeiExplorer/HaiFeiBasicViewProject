//
//  UINavigationBar+HFSAddtion.m
//  
//
//  Created by HFS on 2019/1/2.
//  Copyright © 2019年 HFS. All rights reserved.
//

#import "UINavigationBar+HFSAddtion.h"

@implementation UINavigationBar (HFSAddtion)


/**
 设置导航栏title的文本相关
 @param font 字体大小
 @param color 字体颜色
 */
- (void)navBarTitleFont:(UIFont *)font titleColor:(UIColor *)color
{
    UIFont *normalFont = [UIFont systemFontOfSize:16];
    if (font) {
        normalFont = font;
    }
    UIColor *normalColor = [UIColor blackColor];
    if (color) {
        normalColor = color;
    }
    NSDictionary<NSAttributedStringKey, id> *titleTextAttributes = @{NSForegroundColorAttributeName:normalColor,NSFontAttributeName:normalFont};
    [self setTitleTextAttributes:titleTextAttributes];
    
}
/**
 导航栏设置透明度
 @param translucent YES 不透明 NO 透明
 */
- (void)updateTranslucnent:(BOOL)translucent
{
    self.translucent = translucent;
}
//设置导航栏背景色
- (void)navBarBackgroudcolor:(UIColor *)color
{
    [self setBarTintColor:color];
}
/**
 设置导航栏item的 背景色 --会覆盖其上item上图片的颜色
 如果要显示自己设置的item的图片 需要重新设置item的customView
 @param color color
 */
- (void)navBarItemBackgroud:(UIColor *)color
{
    [self setTintColor:color];
}
/**
 导航栏下的那条线是显示还是隐藏
 
 @param hidden YES 隐藏 NO是显示
 */
- (void)showBackgroundSepView:(BOOL)hidden
{
    UIView *firstView = self.subviews[0];
    ///<_UIBarBackground: 0x7ff384d0e4e0; frame = (0 -44; 414 88); userInteractionEnabled = NO; layer = <CALayer: 0x600001272cc0>>
    if (firstView) {
        UIView *tempView = firstView.subviews[0];
        ///<IImageView: 0x7fa245f0af00; frame = (0 88; 414 0.333333); userInteractionEnabled = NO; layer = <CALayer: 0x6000020338a0 默认是不隐藏的
        if (tempView) {
            tempView.hidden = hidden;
        }
    }
}

/**
 递归获取子视图

 @param view view
 @param level level 0 是最底层的view
 */
+(void)printSubview:(UIView *)view andLevel:(int)level
{
    NSArray *subviews = [view subviews];
    // 如果没有子视图就直接返回
    if ([subviews count] == 0) return;
    for (UIView *subview in subviews) {
        // 根据层级决定前面空格个数，来缩进显示
        NSString *blank = @"";
        for (int i = 1; i < level; i++) {
            blank = [NSString stringWithFormat:@"  %@", blank];
        }
        // 打印子视图相关信息
        NSLog(@"%@%d: %@", blank, level, subview);
        // 递归获取此视图的子视图
        [self printSubview:subview andLevel:(level+1)];
    }
}

//判断是否是X
+ (BOOL)is_iPhoneX {
    BOOL isPhoneX = NO;
    if (@available(iOS 11.0, *)) {
        isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;
    }
    return isPhoneX;
}
@end
