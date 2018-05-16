//
//  tableRowView.m
//  tableViewDemo
//
//  Created by DMKFH on 2018/5/16.
//  Copyright © 2018年 DMKFH. All rights reserved.
//

#import "tableRowView.h"

@implementation tableRowView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}
//重写选中颜色方法
-(void)drawSelectionInRect:(NSRect)dirtyRect{
    //如果没有高亮色
    if (self.selectionHighlightStyle!=NSTableViewSelectionHighlightStyleNone){
        [_selectColor setFill];
        NSBezierPath *path = [NSBezierPath bezierPathWithRect:dirtyRect];
        [path fill];
    }
}
#pragma mark - setter/getter
-(void)setSelectColor:(NSColor *)selectColor{
    if (_selectColor!=selectColor) {
#if !__has_feature(objc_arc)
        if(_selectColor){[_selectColor release];}
        if(selectColor){[selectColor retain];}
#endif
        _selectColor=selectColor;
        [self setNeedsDisplay:YES];
    }
}
@end
