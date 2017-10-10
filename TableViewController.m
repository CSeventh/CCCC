//
//  TableViewController.m
//  Cseventh
//
//  Created by user on 2017/10/10.
//  Copyright © 2017年 user. All rights reserved.
//
/*
 机型适配
 web适应屏幕
 不同cell跳转到不同网页
 导航栏设置返回
 */

#import "TableViewController.h"
#import "webViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if(indexPath.section == 0){
        if (indexPath.row == 0) {//swich？
            cell.textLabel.text = @"新生攻略手册--开篇";
        } else if (indexPath.row == 1){
            cell.textLabel.text = @"新生攻略手册--地图";
        } else if (indexPath.row == 2){
            cell.textLabel.text = @"新生攻略手册--湖工大简介";
        } else if (indexPath.row == 3){
            cell.textLabel.text = @"新生攻略手册--新生需要警惕的几件事情";
        } else if (indexPath.row == 4){
            cell.textLabel.text = @"新生攻略手册--上网指南";
        } else if (indexPath.row == 5){
            cell.textLabel.text = @"新生攻略手册--军训篇";
        } else if (indexPath.row == 6){
            cell.textLabel.text = @"新生攻略手册--宿舍生活篇";
        } else if (indexPath.row == 7){
            cell.textLabel.text = @"新生攻略手册--一组团（崛起的生活区）";
        } else if (indexPath.row == 8){
            cell.textLabel.text = @"新生攻略手册--二组团（世外桃源）";
        } else if (indexPath.row == 9){
            cell.textLabel.text = @"新生攻略手册--五组团（应有尽有的生活区）";
        } else if (indexPath.row == 10){
            cell.textLabel.text = @"新生攻略手册--东门";
        } else if (indexPath.row == 11){
            cell.textLabel.text = @"新生攻略手册--转专业篇不可抗力下架";
        } else if (indexPath.row == 12){
            cell.textLabel.text = @"新生攻略手册--素拓篇不可抗力下架";
        } else if (indexPath.row == 13){
            cell.textLabel.text = @"新生攻略手册--学生会篇";
        } else if (indexPath.row == 14){
            cell.textLabel.text = @"新生攻略手册--社团篇";
        } else if (indexPath.row == 15){
            cell.textLabel.text = @"新生攻略手册--购机篇";
        } else if (indexPath.row == 16){
            cell.textLabel.text = @"新生攻略手册--结束语16年";
        } else if (indexPath.row == 17){
            cell.textLabel.text = @"新生攻略手册--结束语15年";
        } else if (indexPath.row == 18){
            cell.textLabel.text = @"新生攻略手册--结束语14年";
        } else if (indexPath.row == 19){
            cell.textLabel.text = @"校内网全篇pdf下载";
        }
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 20;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    webViewController *view = [[webViewController alloc]init];
    [self presentViewController:view animated:YES completion:nil];
    //    [self.navigationController pushViewController:detailView animated:NO];
}
@end
