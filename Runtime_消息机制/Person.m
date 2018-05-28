//
//  Person.m
//  Runtime_消息机制
//
//  Created by Palm on 2018/4/2.
//  Copyright © 2018年 palm. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>


@implementation Person


+ (void)eat {
    NSLog(@"我是来做测试的，，，，哦哦哦啊哦哦，好吃的");
}

- (void)eat {
    NSLog(@"runtime what are 有 弄啥嘞");
}

void aaa(id self, SEL _cmd, id param1) {
    NSLog(@"调用aoao %@ %@ %@", self,NSStringFromSelector(_cmd), param1);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(aoao:)) {
        class_addMethod(self, sel, (IMP)aaa, "v@:@");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

@end
