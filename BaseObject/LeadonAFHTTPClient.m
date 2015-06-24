//
//  LeadonAFHTTPClient.m
//  BaseObject
//
//  Created by 杨伟清 on 14/11/26.
//  Copyright (c) 2014年 绿点科技. All rights reserved.
//

#import "LeadonAFHTTPClient.h"

/**
 要使用常规的AFN网络访问
 
 1. AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
 
 所有的网络请求,均有manager发起
 
 2. 需要注意的是,默认提交请求的数据是二进制的,返回格式是JSON
 
 1> 如果提交数据是JSON的,需要将请求格式设置为AFJSONRequestSerializer
 2> 如果返回格式不是JSON的,
 
 3. 请求格式
 
 AFHTTPRequestSerializer            二进制格式
 AFJSONRequestSerializer            JSON
 AFPropertyListRequestSerializer    PList(是一种特殊的XML,解析起来相对容易)
 
 4. 返回格式
 
 AFHTTPResponseSerializer           二进制格式
 AFJSONResponseSerializer           JSON
 AFXMLParserResponseSerializer      XML,只能返回XMLParser,还需要自己通过代理方法解析
 AFXMLDocumentResponseSerializer (Mac OS X)
 AFPropertyListResponseSerializer   PList
 AFImageResponseSerializer          Image
 AFCompoundResponseSerializer       组合
 */


static NSString *const AFAppDotNetAPIBaseURLString = @"http://192.168.10.136";

@implementation LeadonAFHTTPClient


+ (LeadonAFHTTPClient *)sharedClient {
    
    static LeadonAFHTTPClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        NSURL *baseURL = [NSURL URLWithString:AFAppDotNetAPIBaseURLString];
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        [config setHTTPAdditionalHeaders:@{ @"Content-Type" : @"application/json"}];
        
        _sharedClient = [[LeadonAFHTTPClient alloc] initWithBaseURL:baseURL
                                         sessionConfiguration:config];
        _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
        //_sharedClient.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
        
        //根据baseURL 设定url请求方式
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        
        
        //设置我们的缓存大小 其中内存缓存大小设置10M  磁盘缓存5M
        //        NSURLCache *cache = [[NSURLCache alloc] initWithMemoryCapacity:10 * 1024 * 1024
        //                                                          diskCapacity:50 * 1024 * 1024
        //                                                              diskPath:nil];
        //
        //        [config setURLCache:cache];
        
        //把服务端证书(需要转换成cer格式)放到APP项目资源里，AFSecurityPolicy会自动寻找根目录下所有cer文件
//        AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];
       // securityPolicy.allowInvalidCertificates = YES;
        
    });
    
    return _sharedClient;
}


@end
