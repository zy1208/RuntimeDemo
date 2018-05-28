//
//  NSObject+Objc.m
//  Runtime_消息机制
//
//  Created by Palm on 2018/4/3.
//  Copyright © 2018年 palm. All rights reserved.
//

#import "NSObject+Objc.h"
#import <objc/message.h>

@implementation NSObject (Objc)

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, @"name");
}

@end
