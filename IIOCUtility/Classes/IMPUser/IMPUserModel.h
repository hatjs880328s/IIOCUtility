// ==============================================================================
//
// This file is part of the IMP Cloud.
//
// Create by Shiguang <shiguang@richingtech.com>
// Copyright (c) 2016-2017 inspur.com
//
// For the full copyright and license information, please view the LICENSE
// file that was distributed with this source code.
//
// ==============================================================================


#import <Foundation/Foundation.h>
#import "IMPEnterpriseModel.h"

@interface IMPUserModel : NSObject

+ (IMPUserModel *)IIPRIVATE_lastLoginUserInfo;
+ (void)setLastLoginUserInfo:(IMPUserModel *)userInfo;
+ (NSString *)IIPRIVATE_lastLoginUserAccountName;
+ (void)IIPRIVATE_setLastLoginUserAccountName:(NSString *)accountName;
+ (IMPUserModel *)activeInstance;
+ (void)IIPRIVATE_setActiveInstance:(IMPUserModel *)user;

@property (nonatomic) int id;
@property (nonatomic, copy) NSString * code;
@property (nonatomic, copy) NSString * email;
@property (nonatomic, copy) NSDate * createdAt;
@property (nonatomic, copy) NSString * firstName;
@property (nonatomic, copy) NSString * lastName;
@property (nonatomic, copy) NSString * gender;
@property (nonatomic, copy) NSString * locale;
@property (nonatomic, copy) NSString * phone;
@property (nonatomic, copy) NSString * avatar;
@property (nonatomic, copy) NSString * state;
@property (nonatomic, copy) NSString * oldId;
@property (nonatomic, copy) NSString * has_password;
@property (nonatomic, strong) IMPEnterpriseModel *enterprise;
@property (nonatomic, strong) NSArray *enterprises;

- (NSString *)userName;
- (NSString *)exeofidString;
- (NSString *)userEmail;
- (NSString *)userMobile;
- (NSArray *)getEnterprises;
- (void)reset;

@end
