//
//  bViewController.h
//  04_05_demo1
//
//  Created by 李志鹏 on 16/4/5.
//  Copyright © 2016年 李志鹏. All rights reserved.
//

#import <UIKit/UIKit.h>
//重新定义block类名 void返回值类型 BlockValue类名(重命名类名) NSString *stringValue参数
typedef void(^BlockValue)(NSString *stringValue);

@interface bViewController : UIViewController
//block属性  此处要用copy修饰
@property (nonatomic, copy) BlockValue blockValue;

- (void)getValue:(BlockValue)aBlock;
@end
