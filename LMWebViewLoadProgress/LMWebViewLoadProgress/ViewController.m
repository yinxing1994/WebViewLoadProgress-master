//
//  ViewController.m
//  LMWebViewLoadProgress
//
//  Created by limin on 17/1/16.
//  Copyright © 2017年 君安信（北京）科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "LMWebController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width-30, 44)];
    [btn setTitle:@"点击进去webview" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: btn];
}

-(void)btnclick
{
    LMWebController *webvc = [[LMWebController alloc]init];
    webvc.url = @"http://www.lingfo.com";
    [self.navigationController pushViewController:webvc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
