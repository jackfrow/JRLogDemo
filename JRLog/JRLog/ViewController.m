//
//  ViewController.m
//  JRLog
//
//  Created by 徐方豪 on 2018/2/6.
//  Copyright © 2018年 徐方豪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //    NSLog(@"this is a test message");
    
    //获得应用程序沙盒的Documents文件夹路径**
    //    NSArray *arrDocumentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    //    NSString *documentPath = [arrDocumentPaths objectAtIndex:0];
    //    NSLog(@"Documents path: %@",documentPath);
    
    [self addBtn];
    
}

-(void)addBtn{
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    btn.frame = CGRectMake(100, 100, 100, 100);
    
    [btn setTitle:@"添加log" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(addlogs) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}


/**
 添加log日志
 */
-(void)addlogs{
    
    //产生Log
    DDLogVerbose(@"Verbose");
    DDLogDebug(@"Debug");
    DDLogInfo(@"Info");
    DDLogWarn(@"Warn");
    DDLogError(@"Error");
    
    //    NSLog(@"123");
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
