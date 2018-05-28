//
//  UIImage+Image.m
//  Runtime_消息机制
//
//  Created by Palm on 2018/4/3.
//  Copyright © 2018年 palm. All rights reserved.
//

#import "UIImage+Image.h"
#import <objc/message.h>

@implementation UIImage (Image)

+ (void)load {
    Method system = class_getClassMethod(self, @selector(imageNamed:));
    Method me  = class_getClassMethod(self, @selector(loadImageWithName:));
    method_exchangeImplementations(system, me);
}

+ (instancetype)loadImageWithName:(NSString *)name {
    UIImage *image = [self loadImageWithName:name];
    if (image == nil) {
        NSLog(@"加载的图片不存在");
    }
    return image;
}

@end
