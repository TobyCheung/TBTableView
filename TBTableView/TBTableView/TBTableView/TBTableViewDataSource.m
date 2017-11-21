//
//  TBTableViewDataSource.m
//  TBTableView
//
//  Created by ztb on 2017/9/30.
//  Copyright © 2017年 ztb. All rights reserved.
//

#import "TBTableViewDataSource.h"

@interface TBTableViewDataSource ()

//@property (nonatomic, copy) NSString *cellIdentifier;
//@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation TBTableViewDataSource

- (NSMutableArray<NSMutableArray *> *)dataGroups {
    if (_dataGroups == nil) {
        _dataGroups = [NSMutableArray array];
    }
    return _dataGroups;
}

- (id)init {
    return nil;
}

- (id)initWithDataGroups:(NSMutableArray<NSMutableArray *> *)dataGroups {
    
    if (self = [super init]) {
        self.dataGroups = dataGroups;
//        self.cellIdentifier = aCellIdentifier;
//        self.configureCellBlock = [aConfigureCellBlock copy];
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSMutableArray *items = self.dataGroups[indexPath.section];
    return items[indexPath.row];
}

#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataGroups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataGroups[section].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
//                                                            forIndexPath:indexPath];
//    id item = [self itemAtIndexPath:indexPath];
//    self.configureCellBlock(cell, item);
//    return cell;
    
    id item = [self itemAtIndexPath:indexPath];
    return [item tableView:tableView representationCellForRowAtIndexPath:indexPath];
}


@end
