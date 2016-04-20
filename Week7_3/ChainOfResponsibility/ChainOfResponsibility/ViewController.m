//
//  ViewController.m
//  ChainOfResponsibility
//
//  Created by kongyunpeng on 4/12/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"
#import "AttackHandler.h"
#import "FireAttackHandler.h"
#import "SnowAttackHandler.h"
#import "SnowAttack.h"
#import "FireAttack.h"
#import "Avartar.h"
#import "LightingAttack.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    
    
  // the last of chain
    Avartar *avartar = [[Avartar alloc] init];
   
    FireAttackHandler *fireAttackHandler = [[FireAttackHandler alloc] init];
    fireAttackHandler.handler = avartar;
    //middle of the chain
     SnowAttackHandler *snowAttackHandler = [[SnowAttackHandler alloc] init];
    snowAttackHandler.handler = fireAttackHandler;
    //first of the chain
    SnowAttack *snowAttack = [[SnowAttack alloc] init];
    [snowAttackHandler handleAttack: snowAttack];
    
    LightingAttack *lightingAttack = [[LightingAttack alloc] init];
    [snowAttackHandler handleAttack:lightingAttack];
   
   

    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
