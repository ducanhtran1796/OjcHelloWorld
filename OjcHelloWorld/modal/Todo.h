//
//  Todo.h
//  OjcHelloWorld
//
//  Created by Đức Anh Trần on 4/6/18.
//  Copyright © 2018 Đức Anh Trần. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject {
    NSUUID *id;
    NSString *name;
    NSString *category;
    Boolean *status;
}
@property(nonatomic, copy) NSUUID *id;
@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *category;
@property(nonatomic, assign) Boolean *status;
@end
