//
//  YFViewController.m
//  UIView-MBProgressHUD
//
//  Created by bluesky0109 on 04/08/2018.
//  Copyright (c) 2018 bluesky0109. All rights reserved.
//

#import "YFViewController.h"
#import "UIView+YFMBProgressHUD.h"

@interface YFViewController ()

@end

@implementation YFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view yf_showSuccess:@"test 1fjlksdf" duration:2 completion:^{
        [self.view yf_showError:@"xxx" duration:2 completion:^{
            [self.view yf_showActivity];
        }];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
