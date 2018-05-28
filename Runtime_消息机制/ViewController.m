//
//  ViewController.m
//  Runtime_消息机制
//
//  Created by Palm on 2018/4/2.
//  Copyright © 2018年 palm. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "NSObject+Objc.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //消息机制
//    [self thisIsMessage];
    
    //交换方法
//    [self exchangeMethod];
    
    //添加方法
//    [self addMethod];
    
    //添加属性
//    [self addObjc];
    
    
}

- (void)addObjc {
    NSObject *wow = [[NSObject alloc] init];
    wow.name = @"123";
    NSLog(@"打印一下 NSObjc de name === %@", wow.name);
}

- (void)addMethod {
    Person *p2 = [[Person alloc] init];
    [p2 performSelector:@selector(aoao:) withObject:@111];
}

- (void)exchangeMethod {
    [UIImage imageNamed:@"124"];
}

- (void)thisIsMessage {
    Person *p = [[Person alloc] init];
    [p eat];
    objc_msgSend(p, @selector(eat));
    
    [Person eat];
    objc_msgSend([Person class], @selector(eat));
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
