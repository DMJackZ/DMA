//
//  Target_A.m
//  DMA
//
//  Created by JackZ86 on 2018/7/10.
//  Copyright © 2018年 DiMi. All rights reserved.
//

#import "Target_A.h"
#import "DMAViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    DMAViewController *aVC = [[DMAViewController alloc] init];
    return aVC;
}

@end
