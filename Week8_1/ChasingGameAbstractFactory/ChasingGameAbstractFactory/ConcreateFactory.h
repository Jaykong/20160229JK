//
//  ConcreateFactory.h
//  ChasingGameAbstractFactory
//
//  Created by kongyunpeng on 4/19/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Character;
@interface ConcreateFactory : NSObject
+(Character *)enemy;
+(Character *)player;
@end
