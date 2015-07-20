//
//  UIViewController+initialize.m
//  ViewController
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "UIViewController+initialize.h"

@implementation UIViewController (initialize)

+ (id)controller
{
    return [[self alloc]init];
}
+ (id)controllerWithLazyView:(BOOL)lazy
{
    UIViewController *controller = [self controller];
    if (!lazy) {
        controller.view.backgroundColor = [UIColor whiteColor];
    }
    return controller;
}

@end
