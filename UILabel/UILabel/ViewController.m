//
//  ViewController.m
//  UILabel
//
//  Created by stu074 on 16/1/27.
//  Copyright © 2016年 stu074. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+UILabelAutoHeight.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 300, 150)];
    lbl.backgroundColor = [UIColor orangeColor];
    lbl.textColor = [UIColor blackColor];
    lbl.text = @"欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih 欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih";
    //自动换行设置
    lbl.numberOfLines = 0;
    lbl.lineBreakMode = UILineBreakModeWordWrap;
    //文本居左
    lbl.textAlignment = UITextAlignmentLeft;
    
    //自适应屏幕大小
    CGRect txtFrame = lbl.frame;
    NSString *str = lbl.text;
    NSDictionary *dic = @{NSFontAttributeName:lbl.font};
    float height = [str boundingRectWithSize:CGSizeMake(txtFrame.size.width, 3000) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:dic context:nil].size.height;
    lbl.frame = CGRectMake(20, 20, 300, height);
    
    
    //[self.view addSubview:lbl];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 300, 400)];
    label.textColor = [UIColor yellowColor];
    label.backgroundColor = [UIColor greenColor];
    label.text = @"欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih 欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih欢迎大家\n请坐,dcugdjdbvbdjjhdhckdnvnkdbnuduhsuhuhihshjhosdhvvdhsih";
    float h = [label height];
    [self.view addSubview:label];
    NSLog(@"height=%f",h);
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
