//
//  CommpanyDescVC.m
//  FortunePig
//
//  Created by MrChen on 17/4/13.
//  Copyright © 2017年 CHENLEIJING. All rights reserved.
//

#import "CommpanyDescVC.h"
#import "FPMeunButtonView.h"
#import "WLWebView.h"

#define defaltTopMenuHeight DFSPH(43)

@interface CommpanyDescVC ()

@end

@implementation CommpanyDescVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"公司简介";
    self.view.backgroundColor = [PublicClass colorFromHexRGB:@"f9f9f9"];
    NSArray *buttonArray = [NSArray arrayWithObjects:@"公司简介",@"精彩瞬间", nil];
    FPMeunButtonView * MenuView = [[FPMeunButtonView alloc]initWithFrame:CGRectMake(0, 64, ScrrenWidth, ScrrenrHight) ButtonArr:buttonArray ViewHeight:defaltTopMenuHeight selectIndex:2];
    MenuView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:MenuView];

    
    for (UIView *view in MenuView.contentView.subviews) {
        
        NSLog(@"%ld",view.tag);
        
        if (view.tag == 100) {
            [self initWebView:view];
        }
        if (view.tag == 101) {
            [self initWebView:view];
        }
    }
    
}


-(void)initWebView:(UIView*)WView{

    WLWebView *webView = [[WLWebView alloc]initWithFrame:CGRectMake(0, 0, ScrrenWidth, ScrrenrHight)];
    webView.backgroundColor = [UIColor blueColor];
    
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [WView addSubview:webView];

    [webView loadRequest:request];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 

@end
