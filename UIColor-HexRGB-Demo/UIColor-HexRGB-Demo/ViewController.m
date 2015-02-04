//
//  ViewController.m
//  UIColor-HexRGB-Demo
//
//  Created by lslin on 15/2/4.
//  Copyright (c) 2015年 LessFun.com. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+HexRGB.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // 2eeea3
    self.label1.backgroundColor = [UIColor colorWithHex:self.label1.text];
    // #fd482f
    self.label2.backgroundColor = [UIColor colorWithHex:self.label2.text alpha:0.5];
    // 99,159,137
    self.label3.backgroundColor = [UIColor colorWithRGB:self.label3.text];
    // 137,99,59,0.5
    self.label4.backgroundColor = [UIColor colorWithRGBA:self.label4.text];
    // 0f0
    self.label5.backgroundColor = [UIColor colorWithHex:self.label5.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
