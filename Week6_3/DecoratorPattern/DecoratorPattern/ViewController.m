//
//  ViewController.m
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"
#import "ImageShadowFilter.h"
#import "ImageTransformFilter.h"
#import "UIImage+ImageConponent.h"
#import "DecoratorView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"mm"];
    CGAffineTransform rotateForm = CGAffineTransformMakeRotation(M_PI/4);
    
    CGAffineTransform tralation = CGAffineTransformMakeTranslation(image.size.width/2, image.size.height/8);
    
    CGAffineTransform concatForm =  CGAffineTransformConcat(rotateForm, tralation);
    
    
    id <ImageConponent> tranformFilter = [[ImageTransformFilter alloc] initWithConponent:image tranform:concatForm];
    
    
    id <ImageConponent> shadowFilter = [[ImageShadowFilter alloc] initWithConponent:tranformFilter];
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:self.view.frame];
    decoratorView.conponent = shadowFilter;
    [self.view addSubview:decoratorView];
    self.view.backgroundColor = [UIColor whiteColor];
    decoratorView.backgroundColor = [UIColor whiteColor];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
