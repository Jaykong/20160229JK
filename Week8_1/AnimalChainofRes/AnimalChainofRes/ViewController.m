//
//  ViewController.m
//  AnimalChainofRes
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "Cat.h"
#import "Wolf.h"
#import "Goat.h"
#import "Mouse.h"
#import "WoflCat.h"
#import "Tiger.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //the last chain
    WoflCat *woflCat = [[WoflCat alloc] init];
    Wolf *wolf = [[Wolf alloc ] init];
    wolf.animal = woflCat;
    
    Cat *cat = [[Cat alloc ] init];
    cat.animal = wolf;
    
    Goat *goat = [[Goat alloc] init];
    [cat catchSomeAnimal:goat];
    
    Tiger *tiger = [[Tiger alloc] init];
    [cat catchSomeAnimal:tiger];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
