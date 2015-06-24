//
//  BOBusinessAPI.m
//  BaseObject
//
//  Created by 杨伟清 on 14/11/27.
//  Copyright (c) 2014年 绿点科技. All rights reserved.
//

#import "BOBusinessAPI.h"
#import "LeadonAFHTTPClient.h"
@implementation BOBusinessAPI

//登陆过程处理
-(void)loginWith:(NSString *)username AndPswd:(NSString *)pswd
{
    
    NSDictionary *dic=@{username:@"name",pswd:@"password"};
    
    
    
    
    
    
    
    [self requestWithType:BussniessRequestTypePOST parameters:dic];

}


#pragma mark-  接口辅助处理
-(void)requestWithType:(BussniessRequestType) type  parameters:dic
{

    LeadonAFHTTPClient *client=[LeadonAFHTTPClient sharedClient];

    
    [client POST:@"login.php" parameters:dic success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSLog(@"----%@",responseObject);
        [self resultWith:YES data:responseObject];
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"----%@",error);
        [self resultWith:NO data:error];
        
    }];

}

-(void)resultWith:(BOOL)isSucess data:(id)data
{

    if (isSucess) {
        //数据请求成功 回调返回并刷新
        
        
    }
    else
    {
    
    }
    
}

@end
