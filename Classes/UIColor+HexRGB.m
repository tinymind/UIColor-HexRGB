//
//  UIColor+HexRGB.m
//  UIColor-HexRGB-Demo
//
//  Created by lslin on 15/2/4.
//  Copyright (c) 2015年 LessFun.com. All rights reserved.
//

#import "UIColor+HexRGB.h"

#define LS_MID(x, y, z)    ( y < x ? x : (z < y ? z : y) )

@implementation UIColor (HexRGB)

+ (UIColor *)colorWithHex:(NSString *)hex
{
    return [[self class] colorWithHex:hex alpha:1.0];
}

+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha
{
    if (hex.length < 3 || hex.length > 7) {
        return [UIColor clearColor];
    }
    NSString *hexStr = hex;
    if ([hexStr hasPrefix:@"#"]) {
        hexStr = [hexStr substringFromIndex:1];
    }
    
    if (hexStr.length == 3) {
        
        NSString *oneR = [hex substringWithRange:NSMakeRange(0, 1)];
        NSString *oneG = [hex substringWithRange:NSMakeRange(1, 1)];
        NSString *oneB = [hex substringWithRange:NSMakeRange(2, 1)];
        
        hexStr = [NSString stringWithFormat:@"%@%@%@%@%@%@", oneR, oneR, oneG, oneG, oneB, oneB];
    }
    
    NSScanner *scanner = [NSScanner scannerWithString:hexStr];
    unsigned hexNum;
    if (![scanner scanHexInt: &hexNum]) {
        return [UIColor clearColor];;
    }
    return [self colorWithHexNum:hexNum alpha:alpha];
}

+ (UIColor *)colorWithHexNum:(unsigned)hexNum alpha:(CGFloat)alpha
{
    NSInteger r = (hexNum >> 16) & 0xFF;
    NSInteger g = (hexNum >> 8) & 0xFF;
    NSInteger b = (hexNum) & 0xFF;
    
    return [[self class] colorWithR:r g:g b:b a:alpha];
}

+ (UIColor *)colorWithRGB:(NSString *)rgb
{
    NSString *rgba = [NSString stringWithFormat:@"%@,1.0", rgb];
    return [[self class] colorWithRGBA:rgba];
}

+ (UIColor *)colorWithRGBA:(NSString *)rgba
{
    NSArray *list = [rgba componentsSeparatedByString:@","];
    if (list.count != 4) {
        return [UIColor clearColor];
    }
    NSInteger r = [list[0] integerValue];
    NSInteger g = [list[1] integerValue];
    NSInteger b = [list[2] integerValue];
    CGFloat   a = [list[3] floatValue];
    
    return [[self class] colorWithR:r g:g b:b a:a];
}

#pragma mark - Private

+ (UIColor *)colorWithR:(NSInteger)r g:(NSInteger)g b:(NSInteger)b a:(CGFloat)a
{
    r = LS_MID(0, r, 255);
    g = LS_MID(0, g, 255);
    b = LS_MID(0, b, 255);
    a = LS_MID(0, a, 1.0);
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:a];
}

@end
