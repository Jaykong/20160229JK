//
//  AppDelegate.h
//  JKCoreData
//
//  Created by trainer on 3/28/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;//你要使用来操作存取数据：暂存区（以数据库的形式）
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;//xcdeatmodeld形式存在，加载内存到.mmod
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;// NSPersistentStore，连接store（固化存储区）和model、context、创建好了这个对象基本上就不用管了

- (void)saveContext;//把暂存区存到你的固化区(store)
- (NSURL *)applicationDocumentsDirectory;//沙盒机制：你只能动沙盒，正document正好就在沙盒里面


@end

