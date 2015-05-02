//
//  FavoriteViewController.m
//  FavoriteThings-Objc
//
//  Created by Warren Goh on 5/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteViewController.h"
#import "FavoriteThingsTableViewDataSource.h"

@interface FavoriteViewController ()

@property (nonatomic) UITableView *tableView;
@property (nonatomic) FavoriteThingsTableViewDataSource *datasource;

@end

@implementation FavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //title on navigation controller
    self.title = @"Favorite Things";
    
    //creating the table view
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    
    
    //calling the items from the datasource
    self.datasource = [FavoriteThingsTableViewDataSource new];
    [self.datasource registerTableView:self.tableView];
    
    self.tableView.dataSource = self.datasource;
    [self.view addSubview:self.tableView];
    
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
