//
//  ViewController.m
//  BaseObject
//
//  Created by 杨伟清 on 14/11/20.
//  Copyright (c) 2014年 绿点科技. All rights reserved.
//

#import "ViewController.h"
//包含位置：如果头文件中用不到，尽量在实现文件中包含
#import "BOMainViewController.h"
#import "BOBusinessAPI.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BOMainViewController *mainViewController;
    
    [DDLog addLogger:[DDTTYLogger sharedInstance]];// 初始化DDLog日志输出，在这里，我们仅仅希望在xCode控制台输出
    
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];// 启用颜色区分
    setenv("XcodeColors", "YES", 0); // Enables XcodeColors (you obviously have to install it too)
    [[DDTTYLogger sharedInstance] setForegroundColor:[UIColor yellowColor] backgroundColor:nil forFlag:LOG_FLAG_INFO];// 可以修改你想要的颜色
   
//    DDLogError(@"错误信息"); // 红色
//    DDLogWarn(@"警告"); // 橙色
//    DDLogInfo(@"提示信息"); // 默认是黑色
//    DDLogVerbose(@"详细信息"); // 默认是黑色
//    DDLogInfo(@"%d",2);
    //以上是最简单的应用，当然，可以自定义每种日志的颜色，看需求吧。
    
    
    [DDLog addLogger:[DDASLLogger sharedInstance]];// 如果需要，可以添加其他(苹果系统)的日志输出支持
    
    
     DDFileLogger  *fileLogger = [[DDFileLogger alloc] init];
    fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    [DDLog addLogger:fileLogger];
    
    [self requestTest];
    
    
}

-(void)requestTest
{

    BOBusinessAPI *client=[[BOBusinessAPI alloc] init];
     
    [client loginWith:@"xiaobai" AndPswd:@"123456"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
