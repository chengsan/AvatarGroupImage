# AvatarGroupImage
这是一个仿钉钉的群组头像的实现，实现方法和思路代码里有明确注释，是一个比较简单，容易理解的实现思路，欢迎各位star一个，如果有更好更有效的解决方案，可以issure给我，互相学习！

本类中有如下两个方法：

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


在实现文件中使用avatarGroupImage如下
//使用AvatarGroupImageView
    UIImageView *avatarImageView=[[AvatarGroupImageView alloc] avtarGroupOnImageView:canvasView subImageViews:imageViewsArr marginValue:0.5];
