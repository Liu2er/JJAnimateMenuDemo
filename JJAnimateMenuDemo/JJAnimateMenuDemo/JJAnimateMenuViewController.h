//
//  JJAnimateMenuViewController.h
//  JJAnimateMenuDemo
//
//  Created by 刘佳杰 on 16/11/21.
//  Copyright © 2016年 Jiajie.Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JJAnimateMenuDelegate <NSObject>

- (void)menuDidOpen;
- (void)menuDidClose;

@end

@interface JJAnimateMenuViewController : UIViewController

@property (nonatomic, weak) id<JJAnimateMenuDelegate> delegate;

- (instancetype)initWithAnimateView:(UIView *)animateview;

@end
