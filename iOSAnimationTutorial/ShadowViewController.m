//
//  ShadowViewController.m
//  iOSAnimationTutorial
//
//  Created by 臧其龙 on 16/4/10.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "ShadowViewController.h"
#import "CABasicAnimationDemo.h"

@interface ShadowViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (nonatomic, assign) BOOL openShadowOffsetAnimation;
@property (nonatomic, assign) BOOL openShadowColorAnimation;
@end

@implementation ShadowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setavatarImageViewShadow];
    
    // Do any additional setup after loading the view.
}

- (void)setavatarImageViewShadow
{
    _avatarImageView.layer.shadowColor = [UIColor blackColor].CGColor;
    _avatarImageView.layer.shadowOffset = CGSizeMake(0, 0);
    _avatarImageView.layer.shadowOpacity = 1;
}

- (IBAction)startShadowOffsetAnimation:(id)sender {
    [_avatarImageView.layer addAnimation:[CABasicAnimationDemo shadowOffsetAnimation:!_openShadowOffsetAnimation] forKey:@"shadowAnimation"];
    _openShadowOffsetAnimation = !_openShadowOffsetAnimation;
}

- (IBAction)startShadowColorAnimation:(id)sender {
    [_avatarImageView.layer addAnimation:[CABasicAnimationDemo shadowColorAnimation:!_openShadowColorAnimation] forKey:@"shadowAnimation"];
    _openShadowColorAnimation = !_openShadowColorAnimation;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
