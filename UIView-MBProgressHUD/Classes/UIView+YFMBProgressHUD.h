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

- (MBProgressHUD *)yf_showMessage:(NSString *)message duration:(NSTimeInterval)duration;

- (MBProgressHUD *)yf_showMessage:(NSString *)message duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion;

- (MBProgressHUD *)yf_showSuccess:(NSString *)success duration:(NSTimeInterval)duration;

- (MBProgressHUD *)yf_showSuccess:(NSString *)success duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion;

- (MBProgressHUD *)yf_showError:(NSString *)error duration:(NSTimeInterval)duration;

- (MBProgressHUD *)yf_showError:(NSString *)error duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion;

- (MBProgressHUD *)yf_showCustomView:(UIView *)customView duration:(NSTimeInterval)duration;

- (MBProgressHUD *)yf_showCustomView:(UIView *)customView duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion;

- (MBProgressHUD *)yf_showCustomView:(UIView *)customView
                             message:(NSString *)message
                            duration:(NSTimeInterval)duration;

- (MBProgressHUD *)yf_showCustomView:(UIView *)customView
                             message:(NSString *)message
                            duration:(NSTimeInterval)duration
                        completion:(MBProgressHUDCompletionBlock)completion;

- (BOOL)yf_hideHUD;

@end
