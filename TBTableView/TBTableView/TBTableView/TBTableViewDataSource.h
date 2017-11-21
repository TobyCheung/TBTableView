//
//  TBTableViewDataSource.h
//  TBTableView
//
//  Created by ztb on 2017/9/30.
//  Copyright © 2017年 ztb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol TBTableViewDataSourceProtocol <NSObject>

@required
- (UITableViewCell *)tableView:(UITableView *)tableView representationCellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end


//typedef void (^TableViewCellConfigureBlock)(id cell, id item);


@interface TBTableViewDataSource: NSObject<UITableViewDataSource>
/**
 * 数据组
 */
@property (nonatomic, strong) NSMutableArray<NSMutableArray *> *dataGroups;

- (id)initWithDataGroups:(NSMutableArray<NSMutableArray *> *)dataGroups;

//- (id)initWithTableView:(UITableView *)tableView
//             dataGroups:(NSArray<NSArray *> *)dataGroups
//          cellIdentifier:(NSString *)aCellIdentifier
//      configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
