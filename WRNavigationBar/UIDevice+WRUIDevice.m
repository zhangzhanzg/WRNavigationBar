//
//  UIDevice+WRUIDevice.m
//  CodeDemo
//
//  Created by ZHAN on 2018/9/13.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "UIDevice+WRUIDevice.h"

@implementation UIDevice (WRUIDevice)

+ (BOOL)wr_isPhone {
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

+ (BOOL)wr_isIPhoneX {
    if (![self wr_isPhone]) {
        return NO;
    }
    CGSize size = [UIScreen mainScreen].currentMode.size;
    CGFloat ratio = size.height / size.width;
    if (ratio > 2) {
        return YES;
    }
    return NO;
}

@end
