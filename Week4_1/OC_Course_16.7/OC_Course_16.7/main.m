//
//  main.m
//  OC_Course_16.7
//
//  Created by trainer on 3/21/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kBufferSize 12
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile,*outFile;
        NSData *buffer;
        //open for reading
       inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        if (!inFile) {
            NSLog(@"open of testfile for reading failed");
            return 1;
        }
        [[NSFileManager defaultManager]createFileAtPath:@"testout1" contents:nil attributes:nil];
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"testout1"];
        if (!outFile) {
            NSLog(@"open of testout for writing failed");
            return 2;
        }
        
        //[outFile truncateFileAtOffset:1];
        //[outFile seekToEndOfFile];
        buffer = [inFile readDataOfLength:kBufferSize];
        [outFile writeData:buffer];
        
        [inFile closeFile];
        [outFile closeFile];
        
        NSLog(@"%@",[NSString stringWithContentsOfFile:@"testout1" encoding:NSUTF8StringEncoding error:NULL]);
        
      NSData *data =  [NSData dataWithContentsOfFile:@"testout1"];
        NSLog(@"%lul",data.length);
        
    
    }
    return 0;
}
