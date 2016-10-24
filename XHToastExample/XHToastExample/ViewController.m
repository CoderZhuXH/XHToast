//
//  ViewController.m
//  XHToastExample
//
//  Created by xiaohui on 15/12/12.
//  Copyright © 2015年 returnoc.com. All rights reserved.
//

#import "ViewController.h"
#import "XHToast.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"XHToastExample";
    
    // Do any additional setup after loading the view from its nib.
}
-(NSArray *)dataArr{
    if(_dataArr==nil)
    {
        _dataArr = @[@[@"中间显示",@"中间显示+自定义停留时间"],
                     @[@"顶端显示",@"顶端显示+自定义停留时间",@"顶端显示+自定义距顶端距离",@"顶端显示+自定义距顶端距离+自定义停留时间"],
                     @[@"底部显示",@"底部显示+自定义停留时间",@"底部显示+自定义距底部距离",@"底部显示+自定义距底部距离+自定义停留时间"],
                     ];
    }
    return _dataArr;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataArr.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *arr = self.dataArr[section];
    return arr.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10.0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    NSArray *arr = self.dataArr[indexPath.section];
    cell.textLabel.text = arr[indexPath.row];
    cell.textLabel.numberOfLines=0;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    NSArray *arr = self.dataArr[indexPath.section];
    NSString *text = arr[indexPath.row];
    if(indexPath.section==0)
    {
        if(indexPath.row==0)
        {
            /**
             *  中间显示
             */
            [XHToast showCenterWithText:text];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastCenterWithText:text];
            
        }
        else if (indexPath.row==1)
        {
            /**
             *  中间显示+自定义停留时间
             */
            [XHToast showCenterWithText:text duration:3.0];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastCenterWithText:text duration:3.0];
            
        }
    }
    else if (indexPath.section==1)
    {
        if(indexPath.row==0)
        {
            /**
             *  顶端显示
             */
            [XHToast showTopWithText:text];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastTopWithText:text];
        }
        else if (indexPath.row==1)
        {
            /**
             *  顶端显示+自定义停留时间
             */
            [XHToast showTopWithText:text duration:3.0];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastTopWithText:text duration:3.0];
        }
        else if (indexPath.row==2)
        {
            /**
             *  顶端显示+自定义距顶端距离
             */
            [XHToast showTopWithText:text topOffset:120.0];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastTopWithText:text topOffset:120.0];
        }
        else if (indexPath.row==3)
        {
            /**
             *  顶端显示+自定义距顶端距离+自定义停留时间
             */
            [XHToast showTopWithText:text topOffset:120.0 duration:3.0];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastTopWithText:text topOffset:120.0 duration:3.0];
        }
        
    }
    else if (indexPath.section==2)
    {
        if(indexPath.row==0)
        {
            /**
             *  底部显示
             */
            [XHToast showBottomWithText:text];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastBottomWithText:text];
        }
        else if (indexPath.row==1)
        {
            /**
             *  底部显示+自定义停留时间
             */
            [XHToast showBottomWithText:text duration:3.0];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastBottomWithText:text duration:3.0];
        }
        else if (indexPath.row==2)
        {
            /**
             *  底部显示+自定义距顶端距离
             */
            [XHToast showBottomWithText:text bottomOffset:120.0];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastBottomWithText:text bottomOffset:120.0];
        }
        else if (indexPath.row==3)
        {
            /**
             *  底部显示+自定义距顶端距离+自定义停留时间
             */
            [XHToast showBottomWithText:text bottomOffset:120.0 duration:3.0];
            
            /**
             *  你也可以这样调用
             */
            //[self.view showXHToastBottomWithText:text bottomOffset:120.0 duration:3.0];
        }
        
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
