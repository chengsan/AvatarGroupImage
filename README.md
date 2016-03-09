# AvatarGroupImage
这是一个仿钉钉的群组头像的实现，实现方法和思路代码里有明确注释，是一个比较简单，容易理解的实现思路，欢迎各位star一个，如果有更好更有效的解决方案，可以issure给我，互相学习！
在实现文件中使用avatarGroupImage如下

#使用方法
    //创建群组头像组
    - (UIImageView *)createImageViewWithCanvasView:(UIImageView *)canvasView withImageViewsCount:(NSInteger)count {
        NSMutableArray *imageViewsArr=[NSMutableArray array];
        for (NSInteger i=0; i<count; i++) {
            UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0.0, 0.0, 50.0, 50.0)];
            [imageView.layer setCornerRadius:99.5/4];
            [imageView.layer setMasksToBounds:YES];
            [imageView setImage:[[UIImage imageFormColor:UICOLOR_FROM_RGB([[[self.dataArr[i] valueForKey:@"bgColor"]                       valueForKey:@"R"] integerValue], [[[self.dataArr[i] valueForKey:@"bgColor"] valueForKey:@"G"]                              integerValue], [[[self.dataArr[i] valueForKey:@"bgColor"] valueForKey:@"B"] integerValue], 1)                              frame:imageView.bounds] imageWithTitle:[self.dataArr[i] valueForKey:@"name"] fontSize:15.0]];
            [imageViewsArr addObject:imageView];
        }
    
        //使用AvatarGroupImageView
        UIImageView *avatarImageView=[[AvatarGroupImageView alloc] avtarGroupOnImageView:canvasView subImageViews:imageViewsArr marginValue:0.5];
        [avatarImageView setCenter:self.view.center];
        [avatarImageView setBounds:CGRectMake(0.0, 0.0, 100.0, 100.0)];
        return avatarImageView;
    }

#联系我
   微信公众号:  iOSDevTeam
   
   Email: shenguanhua123@gmail.com
   
   [我的博客](http://blog.csdn.net/shenguanhua) 

