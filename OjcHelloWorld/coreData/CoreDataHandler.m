//
//  CoreDataHandler.m
//  OjcHelloWorld
//
//  Created by Đức Anh Trần on 4/11/18.
//  Copyright © 2018 Đức Anh Trần. All rights reserved.
//

#import "CoreDataHandler.h"
#import "AppDelegate.h"

@interface CoreDataHandler() {
    AppDelegate *appDelegate;
    NSManagedObjectContext *context;
}
@end

@implementation CoreDataHandler
#pragma mark - Get Context
- (void)getContext {
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    context = appDelegate.persistentContainer.viewContext;
}

#pragma mark - Save Data
- (void)saveData {
    NSManagedObject *entityObject = [NSEntityDescription insertNewObjectForEntityForName:@"Todos" inManagedObjectContext: context];
    [entityObject setValue:@"507d4fe3-a210-4e91-8eaa-c2d61842410a" forKey:@"id"];
    [entityObject setValue:@"Test name" forKey: @"name"];
    [entityObject setValue:@"507d4fe3-a210-4e91-8eaa-c2d61842410a" forKey: @"categoryId"];
    [entityObject setValue:@YES forKey:@"status"];
    
    [appDelegate saveContext];
}

#pragma mark - Fetch Data
- (NSPersistentStoreResult *)fetchData {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName: @"Todos"];
    return [context executeRequest: request error:nil];
}
@end
