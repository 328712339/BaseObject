//
//  BOBusinessAPI.h
//  BaseObject
//
//  Created by 杨伟清 on 14/11/27.
//  Copyright (c) 2014年 绿点科技. All rights reserved.
//  业务接口层

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, BussniessRequestType) {
    BussniessRequestTypeGET = 0,
    BussniessRequestTypePOST = 1,
    BussniessRequestTypePUT = 2,
    
    BussniessRequestTypeEnd
};


@interface BOBusinessAPI : NSObject
-(void)loginWith:(NSString *)username AndPswd:(NSString *)pswd;
@end
