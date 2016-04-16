



//
//  TransformImage.m
//  GDataXML
//
//  Created by trainer on 4/15/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "TransformImage.h"

@implementation TransformImage
-(void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();//描绘的区域
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI / 4);//做一个roatation
    CGContextConcatCTM(context, transform);//矩矩阵变换
    //current transformation matrix (CTM)
}
@end
