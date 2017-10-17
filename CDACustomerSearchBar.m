//
//  CDACustomerSearchBar.m
//  DVVSearchView
//
//  Created by ZXB on 2017/10/16.
//  Copyright © 2017年 devdawei. All rights reserved.
//

#import "CDACustomerSearchBar.h"
#import "UISearchBar+FMAdd.h"
@interface CDACustomerSearchBar ()

@end

@implementation CDACustomerSearchBar

-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    
    for (UIView *view in self.subviews)
    {
        if ([view isKindOfClass:NSClassFromString(@"UIView")] && view.subviews.count > 0) {
            for (UIView *subview in view.subviews) {
                if ([subview isKindOfClass:NSClassFromString(@"UITextField")]) {
                    UITextField *textField = (UITextField *)subview;
                    CGRect frame = textField.frame;
                    frame.size.height = 24;
                    frame.origin.y=0;
                    textField.frame = frame;
                    textField.font = [UIFont fontWithName:@"Helvetica" size:17.0f];
                    break;
                }
            }
            break;
        }
    }
    
    UITextField *searchField = [self valueForKey:@"searchField"];
    if (searchField) {
        [searchField setBackgroundColor:[UIColor whiteColor]];
        searchField.layer.cornerRadius = 8.0f;
        searchField.layer.borderColor =[UIColor greenColor].CGColor;
        searchField.layer.borderWidth = 1;
        searchField.layer.masksToBounds = YES;
    }
    searchField.leftViewMode=UITextFieldViewModeNever;
    [searchField setTintColor:[UIColor blackColor]];
    
    
    self.placeholder=@"搜索";
    self.backgroundImage=[[UIImage  alloc]init];
    self.barTintColor=[UIColor whiteColor];
    
    
//    self.showsCancelButton=NO;
    //3. 设置按钮文字和颜色
    //设置取消按钮字体
   
    
}

@end
