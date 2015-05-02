//
//  FavoriteThingsTableViewDataSource.m
//  FavoriteThings-Objc
//
//  Created by Warren Goh on 5/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsTableViewDataSource.h"

static NSString *fruits = @"listOfFruits";

@implementation FavoriteThingsTableViewDataSource


-(void) registerTableView: (UITableView *)tableView{
    [tableView registerClass: [UITableViewCell class] forCellReuseIdentifier:fruits];
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self favoriteThings].count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:fruits];
    
    cell.textLabel.text = [self favoriteThings][indexPath.row];

    return cell;
    
    
}

- (NSArray *)favoriteThings{
    
    return @[@"Apples", @"Watermelon", @"Mango"];
}
@end
