//
//  Human.h
//  9.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

typedef enum {
    WomanType,
    ManType
}HumanType;

#import <Foundation/Foundation.h>
@interface Human : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)NSInteger age;
+(Human *)factoryMethodWithName:(HumanType)type;

@end