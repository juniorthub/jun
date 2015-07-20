//
//  TwoViewController.m
//  ViewController
//
//  Created by qianfeng on 15-7-4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *heroLab;

@end

@implementation TwoViewController

- (void)setHero:(Hero *)hero
{
    _hero = hero;
    self.heroLab.text = hero.name;
    NSLog(@"setHero");
}

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
    // Do any additional setup after loading the view from its nib.
    NSLog(@"viewDidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
