//
//  ViewController.m
//  CategoryDecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+BaseFilter.h"
#import "UIImage+Shadow.h"
#import "UIImage+Transform.h"
#import "DecoratorView.h"
#import "ImageConponent.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"mm"];
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(M_PI /4);
    CGAffineTransform translate = CGAffineTransformMakeTranslation(image.size.width/2, image.size.height/8);
    CGAffineTransform contactTransform = CGAffineTransformConcat(rotateTransform, translate);
 UIImage *tranfromImage =  [image imageWithTransform:contactTransform];
  UIImage *shadowImage = [tranfromImage imageWithShadow];
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:self.view.frame];
    decoratorView.image = shadowImage;
    decoratorView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:decoratorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
