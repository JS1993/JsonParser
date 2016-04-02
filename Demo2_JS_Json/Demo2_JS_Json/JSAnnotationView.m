//
//  JSAnnotationView.m
//  Demo2_JS_Json
//
//  Created by  江苏 on 16/3/16.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSAnnotationView.h"

@implementation JSAnnotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self) {
        self.nickLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        self.nickLabel.backgroundColor=[UIColor redColor];
        self.tv=[[UITextView alloc]initWithFrame:CGRectMake(0, 30, 100, 40)];
        self.tv.backgroundColor=[UIColor yellowColor];
        [self addSubview:self.nickLabel];
        [self addSubview:self.tv];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    JSAnnotation* ann=self.annotation;
    JSWeibo* weibo=ann.weibo;
    self.nickLabel.text=weibo.nick;
    self.tv.text=weibo.origtext;
}
@end
