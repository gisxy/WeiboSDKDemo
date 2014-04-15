//
//  gisxyViewController.m
//  gisxyDemo
//
//  Created by gisxy on 14-4-15.
//  Copyright (c) 2014年 esrixa. All rights reserved.
//

#import "gisxyViewController.h"

#import "WeiboSDK.h"

@interface gisxyViewController ()

@end

@implementation gisxyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
