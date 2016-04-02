//
//  JSWeibo.h
//  Demo2_JS_Json
//
//  Created by  江苏 on 16/3/16.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface JSWeibo : NSObject
@property(nonatomic,copy)NSString* nick;
@property(nonatomic,copy)NSString* origtext;
@property(nonatomic)CLLocationCoordinate2D coord;
@end
