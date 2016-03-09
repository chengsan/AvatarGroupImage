//
//  ViewController.m
//  AvatarGroupImage-demo
//
//  Created by shen_gh on 16/3/9.
//  Copyright © 2016年 com.joinup(Beijing). All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Category.h"
#import "AvatarGroupImageView.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *dataArr;//数据源
@property (nonatomic,strong) UIImageView *avatarGroupImageView;
@end

#define UICOLOR_FROM_RGB(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:[self createImageViewWithCanvasView:self.avatarGroupImageView withImageViewsCount:[self.dataArr count]]];
}

- (UIImageView *)avatarGroupImageView{
    if (!_avatarGroupImageView) {
        _avatarGroupImageView=[[UIImageView alloc]init];
        [_avatarGroupImageView setCenter:self.view.center];
        [_avatarGroupImageView setBounds:CGRectMake(0.0, 0.0, 100.0, 100.0)];
    }
    return _avatarGroupImageView;
}

- (NSArray *)dataArr{
    if (!_dataArr) {
        _dataArr=@[@{@"bgColor":@{@"R":@"255",@"G":@"0",@"B":@"0"},@"name":@"申"},@{@"bgColor":@{@"R":@"0",@"G":@"200",@"B":@"0"},@"name":@"刘"},@{@"bgColor":@{@"R":@"111",@"G":@"23",@"B":@"10"},@"name":@"王"},@{@"bgColor":@{@"R":@"0",@"G":@"0",@"B":@"255"},@"name":@"画"}];
    }
    return _dataArr;
}

#pragma mark - custom method
//创建群组头像组
- (UIImageView *)createImageViewWithCanvasView:(UIImageView *)canvasView withImageViewsCount:(NSInteger)count {
    NSMutableArray *imageViewsArr=[NSMutableArray array];
    for (NSInteger i=0; i<count; i++) {
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0.0, 0.0, 50.0, 50.0)];
        [imageView.layer setCornerRadius:99.5/4];
        [imageView.layer setMasksToBounds:YES];
        
        [imageView setImage:[[UIImage imageFormColor:UICOLOR_FROM_RGB([[[self.dataArr[i] valueForKey:@"bgColor"] valueForKey:@"R"] integerValue], [[[self.dataArr[i] valueForKey:@"bgColor"] valueForKey:@"G"] integerValue], [[[self.dataArr[i] valueForKey:@"bgColor"] valueForKey:@"B"] integerValue], 1) frame:imageView.bounds] imageWithTitle:[self.dataArr[i] valueForKey:@"name"] fontSize:15.0]];

        [imageViewsArr addObject:imageView];
    }

    //使用AvatarGroupImageView
    UIImageView *avatarImageView=[[AvatarGroupImageView alloc] avtarGroupOnImageView:canvasView subImageViews:imageViewsArr marginValue:0.5];
    [avatarImageView setCenter:self.view.center];
    [avatarImageView setBounds:CGRectMake(0.0, 0.0, 100.0, 100.0)];
    return avatarImageView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
