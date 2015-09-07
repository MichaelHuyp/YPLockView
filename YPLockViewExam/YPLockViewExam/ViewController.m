//
//  ViewController.m
//  YPLockViewExam
//
//  Created by 胡云鹏 on 15/9/7.
//  Copyright (c) 2015年 MichaelPPP. All rights reserved.
//

#import "ViewController.h"
#import "YPLockView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myImageView.image = [UIImage imageNamed:@"YPLockView.bundle/Home_refresh_bg"];
    
    YPLockView *lockView = [YPLockView didFinishPathBlock:^(YPLockView *lockView, NSString *password) {
        NSLog(@"获得用户的手势路径:%@",password);
    }];
    
    lockView.lockViewType = YPLockViewTypeFive;
    
    lockView.frame = CGRectMake(0, 150, 375, 0);
    
    
    [self.view addSubview:lockView];
}


- (void)lockView:(YPLockView *)lockView didFinishPath:(NSString *)password
{
   NSLog(@"获得用户的手势路径:%@",password);
}

@end
