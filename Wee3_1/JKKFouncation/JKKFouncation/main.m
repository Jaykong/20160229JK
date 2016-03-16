
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      NSString *str1 = @"this is a string A";
    NSMutableString *str2 = [NSMutableString stringWithString:str1];
     [str2 insertString:@" not" atIndex:4];//插入在下标的前面
     NSLog(@"%@",str2);
      
    // 数组声明的方法
        NSNumber *one = [NSNumber numberWithInt:10];
        
        NSArray  *arr = @[@"Jan",@"Feb",@"Mar",@"April"];
        
        NSArray *numberArr = @[one,@2,@3,@4];
        
       //@10
        
        //10
        
        
        
        
        
    }
    return 0;
}
