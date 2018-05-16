//
//  tableView.m
//  tableViewDemo
//
//  Created by DMKFH on 2018/5/16.
//  Copyright © 2018年 DMKFH. All rights reserved.
//

#import "tableView.h"

@implementation tableView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
}
//覆写鼠标点击
-(void)mouseDown:(NSEvent *)event{
    NSPoint clickLocation = [self convertPoint:[event locationInWindow] fromView:nil];//获取鼠标点击坐标点
    NSInteger row=[self rowAtPoint:clickLocation];//将坐标点转换为行号
    if (row>=0) {
        [super mouseDown:event];
    }
}
@end
