//
//  ViewController.m
//  Demo2_JS_Json
//
//  Created by  江苏 on 16/3/16.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSJsonParser.h"
#import "JSAnnotationView.h"
#import "JSAnnotation.h"
@interface ViewController ()

@property (strong, nonatomic) IBOutlet MKMapView *myMapView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* dataPath=[[NSBundle mainBundle]pathForResource:@"weibos" ofType:@"txt"];
    NSData* data=[NSData dataWithContentsOfFile:dataPath];
    NSDictionary* weiDic=[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSMutableArray* weibos=[JSJsonParser parseWeibosByDic:weiDic];
    for (JSWeibo* weibo in weibos) {
        JSAnnotation* ann=[[JSAnnotation alloc]init];
        ann.weibo=weibo;
        [ann setCoordinate:weibo.coord];
        [self.myMapView addAnnotation:ann];
    }
}
- (nullable MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{
    static NSString* indentifier=@"weibox";
    JSAnnotationView* annView=(JSAnnotationView*)[self.myMapView dequeueReusableAnnotationViewWithIdentifier:indentifier];
    if (!annView) {
        annView=[[JSAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:indentifier];
    }
    return annView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
 
@end
