//
//  LeadeonMacroDef.h
//  BaseObject
//
//  Created by 杨伟清 on 14/11/26.
//  Copyright (c) 2014年 绿点科技. All rights reserved.
//

#ifndef BaseObject_LeadeonMacroDef_h
#define BaseObject_LeadeonMacroDef_h

#pragma mark-      宏方法

//设置字典
#define  setDicObject(dict, key, str)                      \
if (str!= nil)                                               \
[dict setObject: str forKey: key];                           \
else                                        \
printf("errDic....");

//添加数组数据
#define  addArrayObject(array, object)                      \
if (object!= nil)                                               \
[array addObject: object];                           \
else                                        \
printf("errArray....");

#pragma mark-        颜色设置

//RGB颜色设置
#define RGBA(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

//RGB颜色设置 16进制
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#pragma mark-   iPhone常用屏幕尺寸

#define SCREEN_WIDTH      [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT     [UIScreen mainScreen].bounds.size.height

#define TABBAR_HEIGHT     49                 //标签栏高度，不用于横屏模式
#define NAVBAR_HORIZON_HEIGHT     44        //竖屏导航栏高度
#define NAVBAR_VERTICAL_HEIGHT     32        //横屏导航栏高度

#define STATUSBAR_HEIGHT  20                 //状态栏高度
#define TABBAR_HEIGHT     44                 //工具栏高度，不用于横屏模式

//系统是否大于等于ios7
#define IS_IOS7 (([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)? (YES):(NO))

#define IS_IPHONE_4(fabs((double)[[UIScreen mainScreen] bounds].size.height-(double)480) < DBL_EPSILON )
#define IS_IPHONE_5(fabs((double)[[UIScreen mainScreen] bounds].size.height-(double)568) < DBL_EPSILON )
#define IS_IPHONE_6(fabs((double)[[UIScreen mainScreen] bounds].size.height-(double)667) < DBL_EPSILON )
#define IS_IPHONE_6S(fabs((double)[[UIScreen mainScreen] bounds].size.height-(double)736)< DBL_EPSILON )


#endif
