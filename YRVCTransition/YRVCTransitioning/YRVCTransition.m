//
//  YRReversibleVCTransitioning.m
//  Mark
//
//  Created by 王晓宇 on 14-10-9.
//  Copyright (c) 2014年 王晓宇. All rights reserved.
//

#import "YRVCTransition.h"

@implementation YRVCTransition

-(id)init{
    if (self=[super init]) {
        self.duration = 0.35;
        self.direction = YRVCTransitionDirection_FromRight;
    }
    return self;
}

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return self.duration;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    CGRect initialFrame = [transitionContext initialFrameForViewController:fromVC];
    CGRect finalFrame = [transitionContext finalFrameForViewController:toVC];

    [self animateTransition:transitionContext fromView:fromVC.view toView:toVC.view initialFrame:initialFrame finalFrame:finalFrame];
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext fromView:(UIView *)fromView toView:(UIView *)toView initialFrame:(CGRect)initialFrame finalFrame:(CGRect)finalFrame{
}
@end
