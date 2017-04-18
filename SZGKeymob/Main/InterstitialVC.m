//
//  InterstitialVC.m
//  SZGKeymobDemo
//
//  Created by shen on 17/4/18.
//  Copyright © 2017年 shen. All rights reserved.
//

#import "InterstitialVC.h"
#import "AdListener.h"
#import <KeymobAd/KeymobAd.h>
@interface InterstitialVC ()

@end

@implementation InterstitialVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [AdManager sharedInstance].controller=self;
    
    [AdManager sharedInstance].listener=[[AdListener alloc] init];
    
    [[AdManager sharedInstance] configWithKeymobService:@"10902" isTesting:YES];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    button.center = self.view.center;
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor whiteColor]];
    [button addTarget:self action:@selector(InterstitialButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}



-(void)InterstitialButtonClicked{
    
     [AdManager sharedInstance].controller=self;
    
    if([[AdManager sharedInstance] isInterstitialReady]){
        
        
        [[AdManager sharedInstance] showInterstitialWithController:self];
        
    }else{
        
        [[AdManager sharedInstance] loadInterstitial];
    }
    
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
