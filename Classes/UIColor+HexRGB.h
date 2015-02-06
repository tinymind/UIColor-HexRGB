//
//  UIColor+HexRGB.h
//  UIColor-HexRGB-Demo
//
//  Created by lslin on 15/2/4.
//  Copyright (c) 2015年 LessFun.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexRGB)

/**
 *  Create UIColor with Hex string
 *
 *  @param hex @"#aabbcc", @"aabbcc", @"#abc", or @"abc"
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHex:(NSString *)hex;

/**
 *  Create UIColor with Hex string and alpha value
 *
 *  @param hex   @"#aabbcc", @"aabbcc", @"#abc", or @"abc"
 *  @param alpha 0.0 ~ 1.0
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha;

/**
 *  Create UIColor with Hex number and alpha value
 *
 *  @param hexNum 0xaabbcc
 *  @param alpha  0.0 ~ 1.0
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexNum:(unsigned)hexNum alpha:(CGFloat)alpha;

/**
 *  Create UIColor with RGB string
 *
 *  @param rgb @"51,51,51"
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithRGB:(NSString *)rgb;

/**
 *  Create UIColor with RGBA string
 *
 *  @param rgba @"51,51,51,0.5"
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithRGBA:(NSString *)rgba;

@end
