//
//  bViewController.m
//  04_05_demo1
//
//  Created by 李志鹏 on 16/4/5.
//  Copyright © 2016年 李志鹏. All rights reserved.
//

#import "bViewController.h"

@interface bViewController ()

@property (weak, nonatomic) IBOutlet UITextField *TextFild;
@end

@implementation bViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //NSString *st = _TextFild.text;
   // _TextFild.secureTextEntry = YES;
    

}
- (void)getValue:(BlockValue)aBlock
{
    self.blockValue = aBlock;
}
- (IBAction)btnClick:(id)sender {
    //判断是否执行setBlock方法,然后再执行里面的操作
    if (self.blockValue) {
        self.blockValue(_TextFild.text);
        
    }
    [self.navigationController popViewControllerAnimated:YES];
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
