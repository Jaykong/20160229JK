//
//  ViewController.m
//  DecoratorPattern_Review
//
//  Created by trainer on 4/15/16.
//  Copyright © 2016 trainer. All rights reserved.
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
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"mm"];
    id<ImageConponent> tralateImage = [[ImageTransformFilter alloc] initWithConponent:image];
    DecoratorView *dView = [[DecoratorView alloc] initWithFrame:self.view.frame];
    dView.image = tralateImage;
    
    [self.view addSubview:dView];
    
    //
    
    
     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
