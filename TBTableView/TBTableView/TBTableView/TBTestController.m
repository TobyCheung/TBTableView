//
//  TBTestController.m
//  TBTableView
//
//  Created by ztb on 2017/9/30.
//  Copyright © 2017年 ztb. All rights reserved.
//

#import "TBTestController.h"
#import "TBTableViewDataSource.h"
#import "TBTestModel.h"
#import "TBTableViewCellFirst.h"
#import "TBTableViewCellSecond.h"

//static NSString * const PhotoCellIdentifier = @"PhotoCell";

@interface TBTestController ()<UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) TBTableViewDataSource *dataSource;

@end

@implementation TBTestController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (void)setupTableView
{
//    TableViewCellConfigureBlock configureCell = ^(PhotoCell *cell, Photo *photo) {
//        [cell configureForPhoto:photo];
//    };
//    NSArray *photos = [AppDelegate sharedDelegate].store.sortedPhotos;
//    self.photosArrayDataSource = [[ArrayDataSource alloc] initWithItems:photos
//                                                         cellIdentifier:PhotoCellIdentifier
//                                                     configureCellBlock:configureCell];
    NSArray *photos = [NSArray array];
    self.dataSource = [[TBTableViewDataSource alloc] initWithDataGroups:photos];
    self.tableView.dataSource = self.dataSource;
    
//    [self.tableView registerNib:[PhotoCell nib] forCellReuseIdentifier:PhotoCellIdentifier];
    [self.tableView registerClass:[TBTableViewCellFirst class] forCellReuseIdentifier:NSStringFromClass([TBTableViewCellFirst class])];
    [self.tableView registerClass:[TBTableViewCellSecond class] forCellReuseIdentifier:NSStringFromClass([TBTableViewCellSecond class])];

}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    PhotoViewController *photoViewController = [[PhotoViewController alloc] initWithNibName:@"PhotoViewController"
//                                                                                     bundle:nil];
//    photoViewController.photo = [self.photosArrayDataSource itemAtIndexPath:indexPath];
//    [self.navigationController pushViewController:photoViewController animated:YES];
    TBTestModel *testModel = self.dataSource.dataGroups[indexPath.section][indexPath.row];
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
