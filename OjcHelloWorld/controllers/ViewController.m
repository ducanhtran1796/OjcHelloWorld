//
//  ViewController.m
//  OjcHelloWorld
//
//  Created by Đức Anh Trần on 4/6/18.
//  Copyright © 2018 Đức Anh Trần. All rights reserved.
//

#import "ViewController.h"
#import "TodoListTableViewCell.h"
#import "AddNewTodoViewController.h"
#import "CoreDataHandler.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *items;

@end

@implementation ViewController

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.todoList.dataSource = self;
    self.todoList.delegate = self;
    self.refreshControl = [[UIRefreshControl alloc] init];
    [self.todoList addSubview: self.refreshControl];
    [self.refreshControl addTarget:self action: @selector(refreshTable) forControlEvents:UIControlEventValueChanged];
    // Do any additional setup after loading the view, typically from a nib
    self.items = [[NSMutableArray alloc] init];
    self.navigationItem.title = @"To do";
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithTitle: @"+" style: UIBarButtonItemStylePlain target:self action: @selector(GotoAddNewTodoScreen)];
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
    CoreDataHandler *coreData = [[CoreDataHandler alloc] init];
    [coreData saveData];
//    NSArray *results = [coreData fetchData];
//    NSLog(@"%@", [results valueForKey: @"name"]);
//    NSLog(@"%@", [results valueForKey: @"id"]);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation
-(void)GotoAddNewTodoScreen {
    [self performSegueWithIdentifier:@"showAddNewTodo" sender:nil];
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    ViewController *addNewTodo = [storyboard instantiateViewControllerWithIdentifier:@"AddNewTodo"];
//    [self.navigationController pushViewController: addNewTodo animated:YES];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"run run run");
    if([[segue identifier] isEqualToString: @"showAddNewTodo"]) {
        AddNewTodoViewController *addNewTodoView = (AddNewTodoViewController *)segue.destinationViewController;
        addNewTodoView.title = @"New Todo";
        addNewTodoView.testParams = @"new params passed";
    }
}

#pragma mark - Table view datasource
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TodoCell";
    TodoListTableViewCell *cell = (TodoListTableViewCell *)[tableView dequeueReusableCellWithIdentifier: cellIdentifier forIndexPath: indexPath];
    //cell.lblTodoName.text = item.name;
    return cell;
}
#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        NSLog(@"%ld", (long)indexPath.row);
    }
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.view.frame.size.height * 0.07;
}
- (void)refreshTable {
    [self.refreshControl endRefreshing];
    [self.todoList reloadData];
}
@end
