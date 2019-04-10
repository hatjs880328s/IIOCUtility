//
//  IIDataBaseManage.h
//  impcloud_dev
//
//  Created by 衣凡 on 2018/12/21.
//  Copyright © 2018年 Elliot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IIDataBaseManage : NSObject
+ (IIDataBaseManage *)instance;
- (void)closeDataBase;
@end
