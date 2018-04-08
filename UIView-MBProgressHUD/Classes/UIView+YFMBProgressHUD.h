//
//  UIView+YFMBProgressHUD.h
//  Pods
//
//  Created by yongfeng on 2018/4/8.
//

#import <UIKit/UIKit.h>
#import <MBProgressHUD/MBProgressHUD.h>

@interface UIView (YFMBProgressHUD)

- (MBProgressHUD *)yf_showActivity;

- (MBProgressHUD *)yf_showActivityMessage:(NSString *)message;

- (void)yf_showMessage:(NSString *)message duration:(NSTimeInterval)duration;

- (void)yf_showMessage:(NSString *)message duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion;

- (void)yf_showSuccess:(NSString *)success duration:(NSTimeInterval)duration;

- (void)yf_showSuccess:(NSString *)success duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion;

- (void)yf_showError:(NSString *)error duration:(NSTimeInterval)duration;

- (void)yf_showError:(NSString *)error duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion;

- (BOOL)yf_hideHUD;

@end
