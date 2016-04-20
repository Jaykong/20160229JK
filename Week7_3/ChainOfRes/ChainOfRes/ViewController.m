//
//  ViewController.m
//  ChainOfRes
//
//  Created by trainer on 4/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "MagicAttack.h"
#import "LightingAttack.h"
#import "SwordAttack.h"
#import "Avanta.h"
#import "HandleMagic.h"
#import "HandleSword.h"
#import "HandleLighting.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //the last chain of resposibility
    Avanta *avanta = [[Avanta alloc] init];
   //the middle in the chain of responsibility
    HandleMagic *handleMagic = [[HandleMagic alloc] init];
    handleMagic.nextResponder = avanta;
    // the start
    
    HandleSword *handleSword  = [[HandleSword alloc] init];
    handleSword.nextResponder = handleMagic;
    
    //pass the attack
    MagicAttack *magicAttack = [[MagicAttack alloc] init];
    
    [handleSword handleAttack:magicAttack];
    
    //pass thg lighting attac
    LightingAttack *lightingAttack = [[LightingAttack alloc] init];

    [handleSword handleAttack:lightingAttack];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
