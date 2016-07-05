#  1. XLPasswordInputView

一个简单的密码输入框视图,包含明文和密文两种模式 , 支持多种属性的自定义,例如: 自定义密码位数,密码边框颜色/宽度,密文模式下小圆点的颜色宽度,明文模式下文字的颜色,大小等属性,类似支付宝/微信密码输入框




# 2. 安装使用方法

-    方法一: pod 'XLPasswordInputView', '~> 1.0.0'

-    方法二: 把示例项目中的XLPasswordInputView文件拖入你的项目即可

#3. 使用示例:

```objc


XLPasswordInputView *passwordInputView = [XLPasswordInputView passwordInputViewWithPasswordLength:7];
    CGFloat gridWidth = 54 * xl_autoSizeScaleX;
    passwordInputView.frame = CGRectMake(20, 100, gridWidth * 6, gridWidth);
    passwordInputView.dotColor = [UIColor yellowColor];
    [self.view addSubview:passwordInputView];
    passwordInputView.passwordBlock = ^(NSString *password){
        NSLog(@"\n password : %@ ",password);
    };


```



   





