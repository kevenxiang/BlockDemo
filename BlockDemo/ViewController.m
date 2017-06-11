//
//  ViewController.m
//  BlockDemo
//
//  Created by xiang on 2017/6/11.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [Person new];
    
    //传统的写法:
    //1.run和eat需要单独调用
    //2.不能随意组合顺序
    [person run];
    [person eat];
    
    
    //目标1：链式编程
    id obj = [person run1];
    [obj eat1];
    
    id obj2 = [person eat1];
    [obj2 run1];
    
    NSLog(@"--------");
    [[person run1] eat1];
    
    
    //目标2：函数式编程
    //思考，在OC中什么时候会用到'()' -> 执行block需要（）
    person.run2().run2().eat2();
    
    NSLog(@"-------------------");
    
    person.run3(1000).eat3(@"water").run3(1000).eat3(@"wind");
    
}

- (void)masDemo {
    UIView *v = [[UIView alloc] init];
    v.backgroundColor = [UIColor blueColor];
    [self.view addSubview:v];
    
    [v mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(40);
        make.size.mas_offset(CGSizeMake(100, 100));
        make.centerX.equalTo(self.view).offset(-40);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end





























