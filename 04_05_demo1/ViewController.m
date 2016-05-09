//
//  ViewController.m
//  04_05_demo1
//
//  Created by 李志鹏 on 16/4/5.
//  Copyright © 2016年 李志鹏. All rights reserved.
//

#import "ViewController.h"
#import "bViewController.h"

@interface ViewController ()
@property (strong,nonatomic) UILabel *lab;
@property (strong,nonatomic) bViewController *bv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 70, 40)];

    _lab = [[UILabel alloc] initWithFrame:CGRectMake(50,200,70,40)];
    
    
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor = [UIColor whiteColor];
    
     _bv = [[bViewController alloc] init];

    
    
    
    [self.view addSubview:btn];
    [self.view addSubview:_lab];
}
-(void)viewDidAppear:(BOOL)animated
{
//    bViewController *bv = [[bViewController alloc] init];
//    bv.block = ^(NSString *str){
//        NSString * ss = str;
//        NSLog(@"%@",ss);
//    };
}
//点击跳转按钮 执行block
-(void)btnClick
{
    NSLog(@"block");
    __weak ViewController *blockSelf = self;
    [_bv getValue:^(NSString *stringValue) {
        NSLog(@"打印block传的数值:%@",stringValue);
        blockSelf.lab.text = stringValue;
        NSLog(@"block1");
    }];
    
    NSLog(@"block2");
    [self.navigationController pushViewController:_bv animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
