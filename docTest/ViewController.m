//
//  ViewController.m
//  docTest
//
//  Created by Andrey Golovin on 31.12.13.
//  Copyright (c) 2013 Jelvix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _webView.delegate = self;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"docx"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSString *document = [webView stringByEvaluatingJavaScriptFromString:@"document.documentElement.innerText"];
    NSLog(@"%@",document);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
