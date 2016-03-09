//
//  AvatarGroupImageView.h
//  joinup_iphone
//
//  Created by shen_gh on 16/2/24.
//  Copyright © 2016年 com.joinup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AvatarGroupImageView : UIImageView

/**
 *  仿钉钉群组头像(4人头像，圆形)
 *
 *  @param canvasImageView 画布(父视图)
 *  @param imageViews      画布里的imageViews
 *
 *  @return 完整的群组头像
 */
- (UIImageView *)avtarGroupOnImageView:(UIImageView *)canvasImageView subImageViews:(NSArray *)imageViews;

//适配器 design pattern
- (UIImageView *)avtarGroupOnImageView:(UIImageView *)canvasImageView subImageViews:(NSArray *)imageViews marginValue:(CGFloat)marginValue;

@end
