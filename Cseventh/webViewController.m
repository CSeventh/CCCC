//
//  webViewController.m
//  Cseventh
//
//  Created by user on 2017/10/10.
//  Copyright © 2017年 user. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()

@end

@implementation webViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 20, width, height-20)];
    NSURL *url = [NSURL URLWithString:@"https://www.tutuweb.cn/home/post/19"];
    NSURLRequest *requst = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requst];
//    webView.scalesPageToFit = YES;
    [self.view addSubview:webView];
    webView.scalesPageToFit = YES;
    
    // Do any additional setup after loading the view.
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
