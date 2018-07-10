//
//  DMAViewController.m
//  DMBaby
//
//  Created by JackZ86 on 2018/7/10.
//  Copyright © 2018年 DiMi. All rights reserved.
//

#import "DMAViewController.h"
#import <DMB_Category/DMMediator+DMB.h>

@interface DMAViewController ()

/** UI */
@property (nonatomic, strong) UIButton *myBtn;

@end

@implementation DMAViewController

#pragma mark - life cycle

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    [super viewDidLoad];
    
    self.title = @"模块A";
    [self.view addSubview:self.myBtn];
    self.myBtn.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 200) / 2.0, 200, 200, 40);
}

#pragma mark - event response
- (void)myBtnClicked:(id)sender
{
    UIViewController *bVC = [[DMMediator sharedInstance] B_aViewControllerWithContentText:@"美丽新世界"];
    [self.navigationController pushViewController:bVC animated:YES];
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
        [_myBtn setTitle:@"跳转模块B" forState:UIControlStateNormal];
    }
    
    return _myBtn;
}

@end
