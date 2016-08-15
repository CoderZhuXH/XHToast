# XHToast
#### 简洁轻便提示工具,一行代码,既可完成提示信息显示.
####[Swift版本请戳此处>>>](https://github.com/CoderZhuXH/XHToastSwift)

### 技术交流群(群号:537476189)

## 效果
![image](http://h.hiphotos.baidu.com/image/pic/item/023b5bb5c9ea15ce2973e439be003af33a87b264.jpg)

## 使用方法
### 1.普通调用
```objc
    /*
    您只需要调用一行代码,既可完成提示信息显示
    */
 
    /*
    中间显示
    */
    [XHToast showCenterWithText:@"您要显示的提示信息"];

    /*
    上方显示
    */
    [XHToast showTopWithText:@"您要显示的提示信息"];

    /*
    下方显示
    */
    [XHToast showBottomWithText:@"您要显示的提示信息"];

```
### 2.自定义Toast停留时间+到屏幕上端/下端距离(见如下方法)

```objc
#pragma mark-中间显示

/**
*  中间显示+自定义停留时间
*
*  @param text     内容
*  @param duration 停留时间
*/
+ (void)showCenterWithText:(NSString *)text duration:(CGFloat)duration;

#pragma mark-上方显示

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
### 1.手动添加:<br>
*   1.将 XHToast 文件夹添加到工程目录中<br>
*   2.导入 XHToast.h

### 2.CocoaPods:<br>
*   1.在 Podfile 中添加 pod 'XHToast'<br>
*   2.执行 pod install 或 pod update<br>
*   3.导入 XHToast.h

### 3.Tips
*    如果你发现你执行`pod install`后,导入的不是最新的,请删除`Podfile.lock`文件,在执行一次 `pod install` 

##  系统要求
*   该项目最低支持 iOS 7.0 和 Xcode 7.0

##  许可证
XHToast 使用 MIT 许可证，详情见 LICENSE 文件



