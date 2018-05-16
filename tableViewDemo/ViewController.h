//
//  ViewController.h
//  tableViewDemo
//
//  Created by DMKFH on 2018/5/16.
//  Copyright © 2018年 DMKFH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTabViewDelegate,NSTableViewDataSource>{
    NSMutableArray *TableViewSource;
    IBOutlet NSTableView *tableViews;
}


@end

