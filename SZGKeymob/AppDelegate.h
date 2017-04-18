//
//  AppDelegate.h
//  SZGKeymob
//
//  Created by shen on 17/4/18.
//  Copyright © 2017年 shen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GDTSplashAd.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,GDTSplashAdDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) GDTSplashAd *splash;

@end

