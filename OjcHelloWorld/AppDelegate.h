//
//  AppDelegate.h
//  OjcHelloWorld
//
//  Created by Đức Anh Trần on 4/6/18.
//  Copyright © 2018 Đức Anh Trần. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

