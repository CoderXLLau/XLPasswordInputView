//
//  ViewController.m
//  20160704 -- 01.XLPasswordInputView
//
//  Created by Liushannoon on 16/7/4.
//  Copyright © 2016年 LiuShannoon. All rights reserved.
//

#import "ViewController.h"

#import "XLPasswordInputView.h"

@interface ViewController ()

/**
 *
 */
@property (nonatomic , weak) XLPasswordInputView *passwordInputView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    XLPasswordInputView *passwordInputView = [XLPasswordInputView passwordInputViewWithPasswordLength:7];
    passwordInputView.frame = CGRectMake(10, 100, 54 * 6, 54);
    [self.view addSubview:passwordInputView];
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
