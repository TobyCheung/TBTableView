//
//  TBTestModel+TableViewRepresentation.m
//  TBTableView
//
//  Created by ztb on 2017/9/30.
//  Copyright © 2017年 ztb. All rights reserved.
//

#import "TBTestModel+TableViewRepresentation.h"
#import "TBTableViewCellFirst.h"
#import "TBTableViewCellSecond.h"

@implementation TBTestModel (TableViewRepresentation)

- (UITableViewCell *)tableView:(UITableView *)tableView representationCellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.type == 0) {
        TBTableViewCellFirst *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([TBTableViewCellFirst class])];
        [self configureCellFirst:cell];
        return cell;
    } else {
        TBTableViewCellSecond *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([TBTableViewCellSecond class])];
        [self configureCellSecond:cell];
        return cell;
    }
    
}

- (void)configureCellFirst:(TBTableViewCellFirst *)cell {

}

- (void)configureCellSecond:(TBTableViewCellSecond *)cell {
    
}

@end
