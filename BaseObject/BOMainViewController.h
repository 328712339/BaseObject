//
//  BOMainViewController.h
//  BaseObject
//
//  Created by 杨伟清 on 14/11/21.
//  Copyright (c) 2014年 绿点科技. All rights reserved.
//  主页面展示

#import <UIKit/UIKit.h>

//类名,用户名命名统一加项目缩写
@interface BOMainViewController : UIViewController
{

    //成员变量定义规范示意： 前缀统一加下划线:_
    
    @public      //默认，可供外部访问
    //须有get set方法才可访问
    NSMutableArray *_testArray1;
    NSMutableArray *_testArray2;
    
    @private     //只能在当前类的对象方法中才能直接访问
    NSInteger     _totalSet;
    @protected    //只能在当前类和子类的对象方法中访问
    NSInteger     _externalSet;

    @package      //(框架级别的)作用域介于私有和公开之间，只要处于同一个框架中就可以直接通过变量名问。
    NSString      *_name; //用户名
    
}


@property (nonatomic ,copy)NSMutableArray *testArray2;  //声明setter和getter方法,并附加定义该变量的属性

@end
