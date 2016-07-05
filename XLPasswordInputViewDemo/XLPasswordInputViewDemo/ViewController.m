//
//  ViewController.m
//  XLPasswordInputViewDemo
//
//  Created by Liushannoon on 16/7/5.
//  Copyright © 2016年 LiuShannoon. All rights reserved.
//

#import "ViewController.h"

#import "XLPasswordInputView.h"
#import "UIView+XLExtension.h"

@interface ViewController ()

@property (nonatomic , weak) XLPasswordInputView *passwordInputView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XLPasswordInputView *passwordInputView = [XLPasswordInputView passwordInputViewWithPasswordLength:7];
    CGFloat gridWidth = 54 * xl_autoSizeScaleX;
    passwordInputView.frame = CGRectMake(20, 100, gridWidth * 6, gridWidth);
    passwordInputView.dotColor = [UIColor yellowColor];
    [self.view addSubview:passwordInputView];
    passwordInputView.passwordBlock = ^(NSString *password){
        if (password.length <= 0 || password == nil) {
            NSLog(@"密码位数已经为0");
        }
        NSLog(@"\n password : %@",password);
    };
    self.passwordInputView = passwordInputView;
    
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"切换明密文" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.frame = CGRectMake(100, 200, 100, 30);
    [button addTarget:self action:@selector(changeSecrity) forControlEvents:UIControlEventTouchUpInside];
}

- (void)changeSecrity
{
    self.passwordInputView.secureTextEntry = !self.passwordInputView.isSecureTextEntry;
    self.passwordInputView.gridLineColor = [UIColor greenColor];
    self.passwordInputView.font = [UIFont systemFontOfSize:18];
    self.passwordInputView.textColor = [UIColor greenColor];
    self.passwordInputView.gridLineWidth = 2;
    self.passwordInputView.dotColor = [UIColor greenColor];
    self.passwordInputView.dotWidth = 16;
    self.passwordInputView.passwordLength = 6;
}

@end
