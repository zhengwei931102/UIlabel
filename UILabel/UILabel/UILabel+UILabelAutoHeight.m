//
//  UILabel+UILabelAutoHeight.m
//  UILabel
//
//  Created by stu074 on 16/1/27.
//  Copyright © 2016年 stu074. All rights reserved.
//

#import "UILabel+UILabelAutoHeight.h"

@implementation UILabel (UILabelAutoHeight)
- (float)height{
    self.numberOfLines = 0;
    self.lineBreakMode = UILineBreakModeWordWrap;
    CGRect txtFrame = self.frame;
    NSString *str = self.text;
    NSDictionary *dic = @{NSFontAttributeName:self.font};
    float hh = [str boundingRectWithSize:CGSizeMake(txtFrame.size.width, 3000) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:dic context:nil].size.height;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, hh);
    return hh;
}
@end
