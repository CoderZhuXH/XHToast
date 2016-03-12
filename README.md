# XHToast
## 效果
![image](https://raw.githubusercontent.com/CoderZhuXH/XHToast/master/DEMO.png)

## 使用方法
* 将XHToast文件夹拖入工程导入XHToast.h 头文件 调用相关方法即可

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
