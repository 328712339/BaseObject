//
//  BOMainViewController.m
//  BaseObject
//
//  Created by 杨伟清 on 14/11/21.
//  Copyright (c) 2014年 绿点科技. All rights reserved.
//

#import "BOMainViewController.h"

@interface BOMainViewController ()

@end

@implementation BOMainViewController
{
     //@implementation中变量默认是@private
    NSString *_birthday;   //用户生日
    
}

@synthesize testArray2=_testArray2;  //setter和getter方法的实现
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
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
