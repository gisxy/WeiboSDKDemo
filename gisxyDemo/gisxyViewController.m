//
//  gisxyViewController.m
//  gisxyDemo
//
//  Created by gisxy on 14-4-15.
//  Copyright (c) 2014年 esrixa. All rights reserved.
//

#import "gisxyViewController.h"

#import "WeiboSDK.h"

#import <TencentOpenAPI/TencentOAuth.h>

@interface gisxyViewController ()

@end

@implementation gisxyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _permissions=[NSArray arrayWithObjects:kOPEN_PERMISSION_GET_USER_INFO,
                  kOPEN_PERMISSION_GET_SIMPLE_USER_INFO,
                  kOPEN_PERMISSION_ADD_ALBUM,
                  kOPEN_PERMISSION_ADD_IDOL,
                  kOPEN_PERMISSION_ADD_ONE_BLOG,
                  kOPEN_PERMISSION_ADD_PIC_T,
                  kOPEN_PERMISSION_ADD_SHARE,
                  kOPEN_PERMISSION_ADD_TOPIC,
                  kOPEN_PERMISSION_CHECK_PAGE_FANS,
                  kOPEN_PERMISSION_DEL_IDOL,
                  kOPEN_PERMISSION_DEL_T,
                  kOPEN_PERMISSION_GET_FANSLIST,
                  kOPEN_PERMISSION_GET_IDOLLIST,
                  kOPEN_PERMISSION_GET_INFO,
                  kOPEN_PERMISSION_GET_OTHER_INFO,
                  kOPEN_PERMISSION_GET_REPOST_LIST,
                  kOPEN_PERMISSION_LIST_ALBUM,
                  kOPEN_PERMISSION_UPLOAD_PIC,
                  kOPEN_PERMISSION_GET_VIP_INFO,
                  kOPEN_PERMISSION_GET_VIP_RICH_INFO,
                  kOPEN_PERMISSION_GET_INTIMATE_FRIENDS_WEIBO,
                  kOPEN_PERMISSION_MATCH_NICK_TIPS_WEIBO, nil];
    
	
    NSString *appid = @"222222";
    
	_tencentOAuth = [[TencentOAuth alloc] initWithAppId:appid
											andDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)tencentOAuth:(id)sender{
    [_tencentOAuth authorize:_permissions inSafari:NO];
}
-(IBAction)sinaAuth:(id)sender{
    WBAuthorizeRequest *request = [WBAuthorizeRequest request];
    request.redirectURI = @"http://www.baidu.com";
    request.scope = @"all";
    request.userInfo = @{@"SSO_From": @"gisxyViewController",
                         @"Other_Info":@"gisxy"};
    [WeiboSDK sendRequest:request];

}
@end
