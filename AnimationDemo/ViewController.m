//
//  ViewController.m
//  AnimationDemo
//
//  Created by 韩卫星 on 17/3/20.
//  Copyright © 2017年 hanweixingTeam. All rights reserved.
//

#import "ViewController.h"

#import "UIView+Animation.h"

#import "CMSCoinView.h"

@interface ViewController () {
}

@property (nonatomic, strong) IBOutlet UIImageView *picImgView;
@property (nonatomic, strong) IBOutlet UIImageView *blueImgView;

@property (nonatomic, retain) IBOutlet CMSCoinView *coinView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.picImgView.animationImages = @[[UIImage imageNamed:@"red"],
                                        [UIImage imageNamed:@"blue"]];
    self.picImgView.animationDuration = 1.0f;
    self.picImgView.animationRepeatCount = 1;
    
    self.blueImgView.animationImages = @[[UIImage imageNamed:@"red"],
                                        [UIImage imageNamed:@"blue"]];
    self.blueImgView.animationDuration = 1.0f;
    self.blueImgView.animationRepeatCount = 1;
    
    UIImageView *profileView = [[UIImageView alloc] initWithImage:[UIImage imageNamed: @"red"]];
    
    UIImageView *profileView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed: @"blue"]];
    
    [_coinView setPrimaryView: profileView1];
    [_coinView setSecondaryView: profileView];
    [_coinView setSpinTime:0.1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
