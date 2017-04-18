//
//  KeymobViewController.m
//  SZGKeymobDemo
//
//  Created by shen on 17/4/18.
//  Copyright © 2017年 shen. All rights reserved.
//

#import "KeymobViewController.h"
#import "BannerVC.h"
#import "InterstitialVC.h"
#import "SplashVC.h"


@interface KeymobViewController (){
    
    NSArray *_dataArr;
}

@end

@implementation KeymobViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Keymob";
    
    _dataArr = @[@"横幅",@"插屏",@"开屏"];
    
}

#pragma mark - TableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _dataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = _dataArr[indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        
        BannerVC *vc = [[BannerVC alloc] init];
        [self.navigationController pushViewController:vc animated:NO];
    }
    if (indexPath.row == 1) {
        InterstitialVC *vc = [[InterstitialVC alloc] init];
        [self.navigationController pushViewController:vc animated:NO];
    }
    if (indexPath.row == 2) {
        
        SplashVC *vc = [[SplashVC alloc] init];
        [self.navigationController pushViewController:vc animated:NO];
    }
    
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;{
    return 80;
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
