//
//  ViewController.m
//  SBHud
//
//  Created by ShiBiao on 2018/8/13.
//  Copyright © 2018年 ShiBiao. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
-(SBHub *)hb {
    if (!_hb) {
        _hb = [[SBHub alloc]init];
    }
    return _hb;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (IBAction)handleButton:(id)sender {
    [self.hb show];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
