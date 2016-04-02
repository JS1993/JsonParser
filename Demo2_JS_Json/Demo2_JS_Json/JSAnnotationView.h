//
//  JSAnnotationView.h
//  Demo2_JS_Json
//
//  Created by  江苏 on 16/3/16.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSWeibo.h"
#import "JSAnnotation.h"
#import <MapKit/MapKit.h>
@interface JSAnnotationView :MKAnnotationView
@property(nonatomic,strong)UILabel* nickLabel;
@property(nonatomic,strong)UITextView* tv;
@end
