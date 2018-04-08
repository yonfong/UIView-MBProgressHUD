//
//  UIView+YFMBProgressHUD.m
//  Pods
//
//  Created by yongfeng on 2018/4/8.
//

#import "UIView+YFMBProgressHUD.h"

@implementation UIView (YFMBProgressHUD)

- (MBProgressHUD *)buildHUDIfNeed {
    MBProgressHUD *hud = [MBProgressHUD HUDForView:self];
    if (!hud) {
        hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
        hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
        hud.bezelView.color = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.85];
        hud.detailsLabel.font = [UIFont systemFontOfSize:16.];
        hud.detailsLabel.numberOfLines = 0;
        hud.contentColor = [UIColor whiteColor];
    } else {
        hud.label.text = nil;
        hud.detailsLabel.text = nil;
        hud.customView = nil;
        [[hud class] cancelPreviousPerformRequestsWithTarget:self];
    }
    
    return hud;
}


- (MBProgressHUD *)yf_showActivity {
    return [self yf_showActivityMessage:nil];
}

- (MBProgressHUD *)yf_showActivityMessage:(NSString *)message {
    MBProgressHUD *hud = [self buildHUDIfNeed];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.detailsLabel.text = message;
    return hud;
}

- (void)yf_showMessage:(NSString *)message duration:(NSTimeInterval)duration {
    return [self yf_showMessage:message duration:duration completion:nil];
}

- (void)yf_showMessage:(NSString *)message duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion {
    MBProgressHUD *hud = [self buildHUDIfNeed];
    
    hud.mode = MBProgressHUDModeText;
    hud.detailsLabel.text = message;
    hud.completionBlock = completion;
    if (duration > 0) {
        [hud hideAnimated:YES afterDelay:duration];
    }
}

- (void)yf_showSuccess:(NSString *)success duration:(NSTimeInterval)duration {
    return [self yf_showSuccess:success duration:duration completion:nil];
}

- (void)yf_showSuccess:(NSString *)success duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion {
    MBProgressHUD *hud = [self buildHUDIfNeed];
    
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_hud_success"]];
    hud.detailsLabel.text = success;
    hud.completionBlock = completion;
    if (duration > 0) {
        [hud hideAnimated:YES afterDelay:duration];
    }
}

- (void)yf_showError:(NSString *)error duration:(NSTimeInterval)duration {
    return [self yf_showError:error duration:duration completion:nil];
}

- (void)yf_showError:(NSString *)error duration:(NSTimeInterval)duration completion:(MBProgressHUDCompletionBlock)completion {
    MBProgressHUD *hud = [self buildHUDIfNeed];
    
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_hud_failed"]];
    hud.detailsLabel.text = error;
    hud.completionBlock = completion;
    if (duration > 0) {
        [hud hideAnimated:YES afterDelay:duration];
    }
}

- (BOOL)yf_hideHUD {
    return [MBProgressHUD hideHUDForView:self animated:YES];
}

@end
