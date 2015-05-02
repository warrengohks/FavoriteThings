//
//  FavoriteThingsTableViewDataSource.h
//  FavoriteThings-Objc
//
//  Created by Warren Goh on 5/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIkit/UIKit.h>

@interface FavoriteThingsTableViewDataSource : NSObject <UITableViewDataSource>

-(void) registerTableView: (UITableView *)tableView;

@end
