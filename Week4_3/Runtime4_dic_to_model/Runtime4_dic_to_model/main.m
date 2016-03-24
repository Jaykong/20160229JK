//
//  main.m
//  Runtime4_dic_to_model
//
//  Created by kongyunpeng on 3/25/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dic = @{@"jay":@10,@"fiona":@11,@"lucy":@12};
        Person *p = [Person new];
//        p.age1 = dic[@"jay"];
//        p.age1 = dic[@"fiona"];
//        p.age1 = dic[@"lucy"];
       // [p setValue:@10 forKey:@"jay"];
        [p setValuesForKeysWithDictionary:dic];
        Person *p2 = [[Person alloc] initWithDictionary:dic];

        NSLog(@"%@",p2.jaa);
    }
    return 0;
}
