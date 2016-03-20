

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@",[NSBundle mainBundle]);
        
        NSFileManager *fm = [NSFileManager defaultManager] ;
        NSString *source, *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *argc = [proc arguments];
        
        if ([argc count] != 3) {
            NSLog(@"Usage:copy source dest %@",[proc processName]);
            return 1;
        }
        
        source = argc[1];
        dest = argc[2];
        
        if ([fm isReadableFileAtPath:source] == NO) {
            
            NSLog(@"can not read source file %@",source);
            return 2;
        }
        
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        NSLog(@"the isDir is %i",isDir);
        
        if (isDir) {
            dest = [dest stringByAppendingPathComponent:source];
        }
        if ([fm fileExistsAtPath:dest]) {
            [fm removeItemAtPath:dest error:NULL];
            
        }
        
        if (![fm copyItemAtPath:source toPath:dest error:NULL]) {
            NSLog(@"copy failes");
            return 3;
        }
        
        NSLog(@"copy %@ to %@ succeeded!",source,dest);
        
        
        
        
    }
    return 0;
}
