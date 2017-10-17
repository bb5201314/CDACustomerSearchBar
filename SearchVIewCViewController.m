//
//  SearchVIewCViewController.m
//  DVVSearchView
//
//  Created by ZXB on 2017/10/16.
//  Copyright © 2017年 devdawei. All rights reserved.
//

#import "SearchVIewCViewController.h"
#import "UISearchBar+FMAdd.h"
#import "CDACustomerSearchBar.h"
@interface SearchVIewCViewController ()<UISearchBarDelegate>
@property(nonatomic,strong)CDACustomerSearchBar *customerSearchbar;
@end

@implementation SearchVIewCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIView *navView=[[UIView  alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width,44)];
    navView.backgroundColor=[UIColor whiteColor];
    self.customerSearchbar=[[CDACustomerSearchBar  alloc]initWithFrame:CGRectMake(50,10,self.view.frame.size.width-100,24)];
    self.customerSearchbar.delegate=self;
    [navView addSubview:self.customerSearchbar];
    self.navigationItem.titleView=navView;
    
    
    
    
    self.customerSearchbar.barTintColor = [UIColor whiteColor];
    self.customerSearchbar.showsCancelButton=YES;
    //3. 设置按钮文字和颜色
    //3. 设置按钮文字和颜色
    [self.customerSearchbar fm_setCancelButtonTitle:@"取消"];
    self.customerSearchbar.tintColor = [UIColor redColor];
    //设置取消按钮字体
    [self.customerSearchbar fm_setCancelButtonFont:[UIFont systemFontOfSize:16]];
    //修正光标颜色
    //    [searchField setTintColor:[UIColor blackColor]];
    
    //4. 设置输入框文字颜色和字体
    //    [self.customSearchBar fm_setTextColor:[UIColor blackColor]];
    //    [self.customSearchBar fm_setTextFont:[UIFont systemFontOfSize:14]];
    
    
    //以下这些有问题就不处理
    UITextField *searchField = [self.customerSearchbar valueForKey:@"searchField"];
    UIButton *voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [voiceButton setImage:[UIImage imageNamed:@"fdj"] forState:UIControlStateNormal];
//    [voiceButton addTarget:self action:@selector(tapVoiceButton:) forControlEvents:UIControlEventTouchUpInside];
    [searchField addSubview:voiceButton];
//    self.voiceButton = voiceButton;
    
    //Autolayout
    voiceButton.translatesAutoresizingMaskIntoConstraints = NO;
    NSDictionary *views = NSDictionaryOfVariableBindings(voiceButton);
    //设置水平方向约束
//    [searchField addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[voiceButton(21)]-|" options:NSLayoutFormatAlignAllRight | NSLayoutFormatAlignAllLeft metrics:nil views:views]];
//    //设置高度约束
//    [searchField addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[voiceButton(21)]" options:NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom metrics:nil views:views]];
//    //设置垂直方向居中约束
//    [searchField addConstraint:[NSLayoutConstraint constraintWithItem:voiceButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:searchField attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
//    
    
    [self.customerSearchbar  becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar __TVOS_PROHIBITED{
    
    [self.customerSearchbar resignFirstResponder];
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
