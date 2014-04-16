//
//  gisxyViewController.h
//  gisxyDemo
//
//  Created by gisxy on 14-4-15.
//  Copyright (c) 2014年 esrixa. All rights reserved.
//

#import <UIKit/UIKit.h>


#import <TencentOpenAPI/TencentOAuth.h>

#import <TencentOpenAPI/sdkdef.h>
#import <TencentOpenAPI/TencentOAuthObject.h>


@interface gisxyViewController : UIViewController<TencentSessionDelegate>{
    TencentOAuth* _tencentOAuth;
    
	NSMutableArray* _permissions;
}

-(IBAction)sinaAuth:(id)sender;

-(IBAction)tencentOAuth:(id)sender;
@end
