//
//  ViewController.m
//  SGNetworkSpeed
//
//  Created by shanggang on 2019/3/21.
//  Copyright © 2019年 shanggang. All rights reserved.
//

#import "ViewController.h"
#import "SGNetworkSpeed.h"

#import "UIImageView+WebCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *bgView = [UIImageView new];
    bgView.frame = self.view.bounds;
    [self.view addSubview:bgView];
    NSString *path = @"http://img.3355.cf/uploads/default/201903/04/default201903041857218539.jpg";
    [bgView sd_setImageWithURL:[NSURL URLWithString:path]];
}
-(void)viewWillAppear:(BOOL)animated{
    
    [[SGNetworkSpeed shareNetworkSpeed] start];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[SGNetworkSpeed shareNetworkSpeed] stop];
}
@end
