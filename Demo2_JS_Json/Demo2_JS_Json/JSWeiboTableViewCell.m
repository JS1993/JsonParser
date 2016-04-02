//
//  JSWeiboTableViewCell.m
//  Demo2_JS_Json
//
//  Created by  江苏 on 16/3/16.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSWeiboTableViewCell.h"

@implementation JSWeiboTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)layoutSubviews{
    self.nickLabel.text=self.weibo.nick;
    self.textTV.text=self.weibo.origtext;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
