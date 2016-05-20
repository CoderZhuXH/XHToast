# XHToast
* 简洁轻便提示工具类,一行代码搞定提示信息

## 效果
![image](https://raw.githubusercontent.com/CoderZhuXH/XHToast/master/DEMO.png)

## 使用方法

```objc
#pragma mark-中间显示
/**
*  中间显示
*
*  @param text 内容
*/
+ (void)showCenterWithText:(NSString *)text;
/**
*  中间显示+自定义停留时间
*
*  @param text     内容
*  @param duration 停留时间
*/
+ (void)showCenterWithText:(NSString *)text duration:(CGFloat)duration;

#pragma mark-上方显示
/**
*  上方显示
*
*  @param text 内容
*/
+ (void)showTopWithText:(NSString *)text;
/**
*  上方显示+自定义停留时间
*
*  @param text     内容
*  @param duration 停留时间
*/
+ (void)showTopWithText:(NSString *)text duration:(CGFloat)duration;
/**
*  上方显示+自定义距顶端距离
*
*  @param text      内容
*  @param topOffset 到顶端距离
*/
+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset;
/**
*  上方显示+自定义距顶端距离+自定义停留时间
*
*  @param text      内容
*  @param topOffset 到顶端距离
*  @param duration  停留时间
*/
+ (void)showTopWithText:(NSString *)text topOffset:(CGFloat)topOffset duration:(CGFloat)duration;

#pragma mark-下方显示
/**
*  下方显示
*
*  @param text 内容
*/
+ (void)showBottomWithText:(NSString *)text;
/**
*  下方显示+自定义停留时间
*
*  @param text     内容
*  @param duration 停留时间
*/
+ (void)showBottomWithText:(NSString *)text duration:(CGFloat)duration;
/**
*  下方显示+自定义距底端距离
*
*  @param text         内容
*  @param bottomOffset 距底端距离
*/
+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset;
/**
*  下方显示+自定义距底端距离+自定义停留时间
*
*  @param text         内容
*  @param bottomOffset 距底端距离
*  @param duration     停留时间
*/
+ (void)showBottomWithText:(NSString *)text bottomOffset:(CGFloat)bottomOffset duration:(CGFloat)duration;

```

##  安装
### 手动添加:<br>
*   1.将 XHToast 文件夹添加到工程目录中<br>
*   2.导入 XHToast.h

### CocoaPods:<br>
*   1.在 Podfile 中添加 pod 'XHToast'<br>
*   2.执行 pod install 或 pod update<br>
*   3.导入 XHToast.h

##  系统要求
*   该项目最低支持 iOS 7.0 和 Xcode 7.0

##  许可证
XHToast 使用 MIT 许可证，详情见 LICENSE 文件



