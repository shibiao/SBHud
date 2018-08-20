//
//  SBHub.m
//  SBHud
//
//  Created by ShiBiao on 2018/8/13.
//  Copyright © 2018年 ShiBiao. All rights reserved.
//

#import "SBHub.h"
@interface SBHub()
@property (nonatomic , strong) NSWindow *hubWindow;
@property (nonatomic , strong) NSTimer *timer;
@end
@implementation SBHub

//- (instancetype)initWithFrame:(NSRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        [self setupWithFrame:frame];
//    }
//    return self;
//}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupWithFrame:NSMakeRect([NSScreen mainScreen].frame.size.width / 2 - 75, 200, 200, 200)];
    }
    return self;
}
-(void)setupWithFrame:(NSRect)frame {
    self.hubWindow = [[NSWindow alloc]initWithContentRect:frame styleMask:NSWindowStyleMaskFullSizeContentView backing:NSBackingStoreBuffered defer:YES screen:[NSScreen mainScreen]];
    SBHubViewController *vc = [[NSStoryboard mainStoryboard]instantiateControllerWithIdentifier:@"SBHubViewController"];
    self.hubWindow.contentViewController = vc;
    self.hubWindow.animationBehavior = NSWindowAnimationBehaviorAlertPanel;
    self.hubWindow.backgroundColor = [NSColor clearColor];
    self.hubWindow.opaque = NO;
    self.hubWindow.hasShadow = NO;
    [self.hubWindow setReleasedWhenClosed:NO];
}
-(void)show {
    if (self.timer != nil) {
        return;
    }
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 repeats:NO block:^(NSTimer * _Nonnull timer) {
        [self.hubWindow.animator close];
        [timer invalidate];
        self.timer = nil;
    }];
    [self.hubWindow orderFront:nil];
}
@end
