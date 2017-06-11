//
//  Person.m
//  BlockDemo
//
//  Created by xiang on 2017/6/11.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run {
    NSLog(@"%s", __FUNCTION__);
}

- (void)eat {
    NSLog(@"%s", __FUNCTION__);
}

- (Person *)run1 {
    NSLog(@"%s", __FUNCTION__);
    return self;
}

- (Person *)eat1 {
    NSLog(@"%s", __FUNCTION__);
    return self;
}

- (Person * (^)())run2 {
    
    Person * (^runBlock)() = ^{
        NSLog(@"run2");
        
        return self;
    };
    
    return runBlock;
}

- (Person *(^)())eat2 {
    return ^{
        NSLog(@"========吃");
        return self;
    };
}

- (Person *(^)(NSString *))eat3 {
    return ^ (NSString *food) {
        NSLog(@"吃 %@", food);
        
        return self;
    };
}

- (Person *(^)(double))run3 {
    return ^ (double distance) {
        NSLog(@"跑 %f", distance);
        
        return self;
    };
}

@end
