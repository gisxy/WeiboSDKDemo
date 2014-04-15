//
//  gisxyAppDelegate.h
//  gisxyDemo
//
//  Created by gisxy on 14-4-15.
//  Copyright (c) 2014年 esrixa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeiboSDK.h"

#define kAppKey         @"1617942800"
#define kRedirectURI    @"http://www.baidu.com"

@interface gisxyAppDelegate : UIResponder <UIApplicationDelegate,WeiboSDKDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NSString *wbtoken;
@end
