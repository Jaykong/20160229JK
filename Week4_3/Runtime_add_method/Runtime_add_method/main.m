

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Person.h"
void addMethod();
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *person = [Person new];
        person.name = @"lily";
        person.age = 30;
      Person *copyPerson =  object_copy(person, sizeof(person));
        printf("%s: %i\n",[copyPerson.name UTF8String],copyPerson.age);
        
        
        addMethod();
    }
    return 0;
}

int addTwoInts(id self,SEL cmd ,int a, int b) {
    return a + b;
}

void addMethod() {
    /*
     objc 方法的本质
     是c的函数带两个参数(id self, SEL cmd)
     
     */
    class_addMethod([Person class], @selector(addTwoInts::), (IMP)addTwoInts, "i:ii");
    
   Person *p = [Person new];
   int result = [p addTwoInts:10 :20];
    printf("The result is %i\n",result);
}

