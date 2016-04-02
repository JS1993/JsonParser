//
//  JSJsonParser.m
//  Demo2_JS_Json
//
//  Created by  江苏 on 16/3/16.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSJsonParser.h"
#import "JSWeibo.h"
@implementation JSJsonParser
+(NSMutableArray*)parseWeibosByDic:(NSDictionary*)WeibosDic{
    NSMutableArray* weibos=[NSMutableArray array];
    NSDictionary* dataDic=[WeibosDic objectForKey:@"data"];
    NSArray* weiboDics=[dataDic objectForKey:@"info"];
    for (NSDictionary* weiDic in weiboDics) {
        JSWeibo* weibo=[[JSWeibo alloc]init];
        weibo.nick=[weiDic objectForKey:@"nick"];
        weibo.origtext=[weiDic objectForKey:@"origtext"];
        CLLocationCoordinate2D coord;
        coord.longitude=[[weiDic objectForKey:@"longitude"] doubleValue];
        coord.latitude=[[weiDic objectForKey:@"latitude"] doubleValue];
        weibo.coord=coord;
        [weibos addObject:weibo];
    }
    return weibos;
}
@end
