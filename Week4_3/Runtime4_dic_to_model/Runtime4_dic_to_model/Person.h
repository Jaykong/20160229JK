//
//  Person.h
//  Runtime4_dic_to_model
//
//  Created by kongyunpeng on 3/25/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *jay,*fiona,*lucy;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end
