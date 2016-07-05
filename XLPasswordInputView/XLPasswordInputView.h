//
//  XLPasswordInputView.h
//  TopHot
//
//  Created by Liushannoon on 16/6/29.
//  Copyright © 2016年 Liushannoon. All rights reserved.
//

/**
 *  使用系统键盘的密码输入框
 */

#import <UIKit/UIKit.h>

@interface XLPasswordInputView : UIView

/**
 *  密码长度 默认6
 */
@property (nonatomic , assign ) NSUInteger passwordLength;
/**
 *  grid line color 默认紫色
 */
@property (nonatomic , strong) UIColor  *gridLineColor;
/**
 *  grid line width 默认1.0f
 */
@property (nonatomic , assign) CGFloat  gridLineWidth;
/**
 *  dot color 默认紫色
 */
@property (nonatomic , strong) UIColor  *dotColor;
/**
 *  dot width 默认12.0f
 */
@property (nonatomic , assign) CGFloat  dotWidth;
/**
 *  label text color 默认 黑色
 */
@property (nonatomic , strong) UIColor  *textColor;
/**
 *  label text font 默认 15
 */
@property (nonatomic , strong) UIFont *font;
/**
 *  传递到外界用户输入的字符串
 */
@property (nonatomic, copy) void(^passwordBlock)(NSString *password);
/**
 *  明文 / 密文 , 默认密文(YES)
 */
@property(nonatomic, getter=isSecureTextEntry) BOOL secureTextEntry;

/**
 *  快速创建对象,
 *
 *  @param passwordLength 密码长度,默认6位
 *
 *  @return XLPasswordInputView实例对象
 */
+ (instancetype)passwordInputViewWithPasswordLength:(NSInteger)passwordLength;
/**
 *  清空密码,重置
 */
- (void)clearPassword;

@end
