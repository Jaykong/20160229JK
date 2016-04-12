//
//  DecoratorView.h
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageConponent.h"
@interface DecoratorView : UIView
@property(nonatomic,strong) id <ImageConponent> conponent;
@end
