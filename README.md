# UIColor-HexRGB
UIColor category that converts Hex And RGB string values to UIColor.

## Installation

Add `UIColor+HexRGB.h` and `UIColor+HexRGB.h` to your project. 

## Usage

``` cpp

  #import "UIColor+HexRGB.h"

  - (void)viewDidLoad {
    [super viewDidLoad];
    
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
  
```

## Example

![Example](https://github.com/tinymind/UIColor-HexRGB/raw/master/example.png)