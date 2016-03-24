

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         一、程序功能：
         该程序实现复制一个文件到另一个文件，如果参数是目录，复制到目录下
         比如你传来的参数是copy test1 test2
         则把test1的内容复制到test2
         如果test2是文件夹则在test2文件下会生成一个test1文件
         二、程序难点：
            (1)怎么进入命令行运行程序？
                1.BuildingSetting改一下Product Name为copy
                2.CMD + B编译程序
                3.右键点击生成的程序copy转到可执行程序目录
         
            (2)在命令行怎么输入多个参数？
                1.copy test1 test2 代表三个参数
                2.注意程序名称算一个参数，这里就是copy!
         
            (3)常用命令
                1.mkdir创建文件夹
                2.vim创建一个新的文件
         三、容易忽略的问题
            NSFileManger一定要初始化，注意声明变量的初始化！
         
         */
        
        //记住要初始化
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
