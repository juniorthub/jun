//
//  UIViewController+initialize.h
//  ViewController
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (initialize)

+ (id)controller;

+ (id)controllerWithLazyView:(BOOL)lazy;

@end
