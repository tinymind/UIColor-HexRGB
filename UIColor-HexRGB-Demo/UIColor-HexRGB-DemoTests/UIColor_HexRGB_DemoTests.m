//
//  UIColor_HexRGB_DemoTests.m
//  UIColor-HexRGB-DemoTests
//
//  Created by lslin on 15/2/4.
//  Copyright (c) 2015年 LessFun.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UIColor+HexRGB.h"

@interface UIColor_HexRGB_DemoTests : XCTestCase

@end

@implementation UIColor_HexRGB_DemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testColorWithHexAndAlpha {
    UIColor *hexColor = [UIColor colorWithHex:@"#000000" alpha:1];
    UIColor *testColor = [UIColor colorWithDisplayP3Red:0 green:0 blue:0 alpha:1];
    
    XCTAssertEqualObjects(hexColor, testColor);
}


- (void)testColorWithRGBA {
    UIColor *RGBColor = [UIColor colorWithRGBA:@"255.255.255.1"];
    UIColor *testColor = [UIColor clearColor];
    
    XCTAssertEqualObjects(RGBColor, testColor);
}

- (void)testColorWithHexAndAlphaWithoutOctothorp {
    //Octothorp = #
    UIColor *hexColor = [UIColor colorWithHex:@"000000" alpha:1];
    UIColor *testColor = [UIColor colorWithDisplayP3Red:0 green:0 blue:0 alpha:1];
    
    XCTAssertEqualObjects(hexColor, testColor);
}

- (void)testColorWithShortHexAndAlpha {
    UIColor *hexColor = [UIColor colorWithHex:@"#00" alpha:1];
    UIColor *testColor = [UIColor colorWithDisplayP3Red:0 green:0 blue:0 alpha:1];
    
    XCTAssertEqualObjects(hexColor, testColor);
}

- (void)testColorWithShortHexAndAlphaWithoutOctothorp {
    UIColor *hexColor = [UIColor colorWithHex:@"000" alpha:1];
    UIColor *testColor = [UIColor colorWithDisplayP3Red:0 green:0 blue:0 alpha:1];
    
    XCTAssertEqualObjects(hexColor, testColor);
}

@end
