//
//  RootViewController.m
//  DMA
//
//  Created by JackZ86 on 2018/7/10.
//  Copyright © 2018年 DiMi. All rights reserved.
//

#import "RootViewController.h"
#import "DMAViewController.h"

@interface RootViewController ()

/** UI */
@property (nonatomic, strong) UIButton *myBtn;

@end

@implementation RootViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.myBtn];
    self.myBtn.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 200) / 2.0, 200, 200, 40);
}

#pragma mark - event response
- (void)myBtnClicked:(id)sender
{
    DMAViewController *aVC = [[DMAViewController alloc] init];
    [self.navigationController pushViewController:aVC animated:YES];
}

#pragma mark - getter and setter
- (UIButton *)myBtn
{
    if (_myBtn == nil) {
        _myBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _myBtn.backgroundColor = [UIColor greenColor];
        [_myBtn addTarget:self action:@selector(myBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        _myBtn.exclusiveTouch = YES;
        [_myBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_myBtn setTitle:@"测试" forState:UIControlStateNormal];
    }
    
    return _myBtn;
}

@end
