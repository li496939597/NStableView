//
//  ViewController.m
//  tableViewDemo
//
//  Created by DMKFH on 2018/5/16.
//  Copyright © 2018年 DMKFH. All rights reserved.
//

#import "ViewController.h"
#import "tableView.h"
#import "tableRowView.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //清除背景色
    [tableViews setBackgroundColor:[NSColor clearColor]];
    TableViewSource = [NSMutableArray array];

}
//将名字存储在字典里
-(void)BudingSource{
    NSDictionary *tem1 = [NSDictionary dictionaryWithObjectsAndKeys:@"Clear",@"name", nil];
    [TableViewSource addObject:tem1];
    NSDictionary *tem2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Uninstall",@"name", nil];
    [TableViewSource addObject:tem2];
    NSDictionary *tem3 = [NSDictionary dictionaryWithObjectsAndKeys:@"LoginItem",@"name", nil];
    [TableViewSource addObject:tem3];
    [tableViews reloadData];//刷新数据，会第一个调用numberOfRowsInTableView
}
-(void)awakeFromNib{
    [super awakeFromNib];
    [self BudingSource];
    //默认选择第0行
    NSIndexSet *index=[NSIndexSet indexSetWithIndex:0];
    [tableViews selectRowIndexes:index byExtendingSelection:NO];
}
//设置返回的行数
-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [TableViewSource count];
}
- (NSView*)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    NSDictionary *itme = [TableViewSource objectAtIndex:row];
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Navigation" owner:nil];
    //添加文字
    [cell.textField setStringValue:[itme objectForKey:@"name"]];
    [cell.textField setFont:[NSFont fontWithName:@"Helvetica Neue Light" size:13]];
    
    return cell;
}
-(NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row{
    tableRowView *rowView = [tableView makeViewWithIdentifier:@"rowView" owner:self];
    if (!rowView) {
        rowView=[[tableRowView alloc] init];
        rowView.identifier=@"rowView";
    }
    [rowView setSelectColor:[NSColor greenColor]];
    return rowView;
    
    return nil;
}


@end
