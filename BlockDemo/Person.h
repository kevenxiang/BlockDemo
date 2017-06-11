//
//  Person.h
//  BlockDemo
//
//  Created by xiang on 2017/6/11.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)run;
- (void)eat;

- (Person *)run1;
- (Person *)eat1;

//关于链式编程和函数式编程
//1.自己封装框架
//2.阅读其他人的框架


//如果要实现函数式编程，需要返回 ‘block’
- (Person * (^)())run2;
- (Person * (^)())eat2;

//返回的 block可以接参数
- (Person * (^)(NSString *food))eat3;
- (Person * (^)(double distance)) run3;

@end
