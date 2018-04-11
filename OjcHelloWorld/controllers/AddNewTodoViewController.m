//
//  AddNewTodoViewController.m
//  OjcHelloWorld
//
//  Created by Đức Anh Trần on 4/9/18.
//  Copyright © 2018 Đức Anh Trần. All rights reserved.
//

#import "AddNewTodoViewController.h"

@interface AddNewTodoViewController ()

@end

@implementation AddNewTodoViewController

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.testParams);
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Add Todo Func
- (Boolean) addTodo:(Todo *)todo {
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
