


//
//  USingGdata.m
//  GDataXML
//
//  Created by trainer on 4/15/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "USingGdata.h"
#import "GDataXMLNode.h"
@implementation USingGdata

+(void)text {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Test" ofType:@"xml"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    
    
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
    
    NSString *xmlStr = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    GDataXMLDocument *doc1 = [[GDataXMLDocument alloc] initWithXMLString:xmlStr options:0 error:nil];
    
    GDataXMLElement *serviceNode = [doc1 rootElement];
    
   
    
   GDataXMLNode *titleNode = [serviceNode attributeForName:@"title"];
    NSString *title = [titleNode stringValue];
    NSLog(@"%@",title);
    
    
    
    
}
@end
