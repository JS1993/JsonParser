//
//  JSWeiboTableViewCell.h
//  Demo2_JS_Json
//
//  Created by  江苏 on 16/3/16.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSWeibo.h"
@interface JSWeiboTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nickLabel;
@property (strong, nonatomic) IBOutlet UITextView *textTV;
@property(nonatomic,strong)JSWeibo* weibo;
@end
