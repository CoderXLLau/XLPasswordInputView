//
//  UIView+XLExtension.h
//  TopHot
//
//  Created by Liushannoon on 16/4/20.
//  Copyright © 2016年 Liushannoon. All rights reserved.
//

#import <UIKit/UIKit.h>

// 屏幕bounds
#define XLScreenBounds [UIScreen mainScreen].bounds
// 屏幕的size
#define XLScreenSize [UIScreen mainScreen].bounds.size
/** 屏幕宽度 */
#define XLScreenW [UIScreen mainScreen].bounds.size.width
/** 屏幕高度 */
#define XLScreenH [UIScreen mainScreen].bounds.size.height
/**
 *  过期提醒
 */
#define XLDeprecated(instead) NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, instead)
/** 程序的主窗口 */
//#define XLKeyWindow [UIApplication sharedApplication].keyWindow
#define XLKeyWindow [UIApplication sharedApplication].windows.firstObject

@interface UIView (XLExtension)

@property (nonatomic, assign) CGFloat xl_height;
@property (nonatomic, assign) CGFloat xl_width;
@property (nonatomic, assign) CGFloat xl_x;
@property (nonatomic, assign) CGFloat xl_y;
@property (nonatomic, assign) CGSize xl_size;
@property (nonatomic, assign) CGFloat xl_centerX;
@property (nonatomic, assign) CGFloat xl_centerY;

@end
