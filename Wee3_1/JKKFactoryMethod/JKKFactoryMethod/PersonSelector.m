
#import "PersonSelector.h"
#import "Person.h"
#import "Child.h"
#import "Adult.h"
#import "Teen.h"

@implementation PersonSelector
+(Person *)selectName:(int)age {
    Class p;
    if (age >= 18) {
        p = [Adult class];
    } else if (age < 13) {
        p = [Child class];
    } else {
        p = [Teen class];
    }
  
    
    return [p selectPerson:age];
}

+(int)selectHeight:(int)age {
    Person *p;
    if (age >= 18) {
        p = [[Adult alloc] init];
    } else if (age < 13) {
        p = [[Child alloc] init];
    } else {
        p = [[Teen alloc] init];
    }
    return p.height;
}

+(Person *)selectPerson:(int)age {
    Person *p;
    if (age >= 18) {
        p = [[Adult alloc] init];
    } else if (age < 13) {
        p = [[Child alloc] init];
    } else {
        p = [[Teen alloc] init];
    }
    return p;
}




@end
