//
//  FirrstViewController.m
//  ViewController
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FirrstViewController.h"
#import "TwoViewController.h"
#include "Hero.h"
#import "UIViewController+initialize.h"

@interface FirrstViewController ()

@end

@implementation FirrstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [super didReceiveMemoryWarning];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = self.view.bounds;
    [self.view addSubview:btn];
    [btn setTitle:@"点我啊" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnTouch:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnTouch:(UIButton *)btn
{
    
    Hero *hero = [Hero new];
    hero.name = @"刘胡兰";
    

    TwoViewController *two = [TwoViewController controllerWithLazyView:NO];
//    two.view;
    two.hero = hero;
    [self.navigationController pushViewController:two animated:YES];

}

- (void)didReceiveMemoryWarning
{
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
