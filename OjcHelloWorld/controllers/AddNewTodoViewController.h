//
//  AddNewTodoViewController.h
//  OjcHelloWorld
//
//  Created by Đức Anh Trần on 4/9/18.
//  Copyright © 2018 Đức Anh Trần. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

@interface AddNewTodoViewController : UIViewController
@property (nonatomic, copy) NSString *testParams;
- (Boolean)addTodo:(Todo *)todo;
@end
