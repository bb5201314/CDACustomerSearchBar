//
//  ViewController.m
//  DVVSearchView
//
//  Created by 大威 on 16/6/20.
//  Copyright © 2016年 devdawei. All rights reserved.
//

#import "ViewController.h"
#import "DVVSearchView.h"
#import "UISearchBar+FMAdd.h"
#import "CDACustomerSearchBar.h"
#import "SearchVIewCViewController.h"
@interface ViewController ()<UISearchBarDelegate>

@property (nonatomic, strong) DVVSearchView *searchView;

@property(nonatomic,strong)CDACustomerSearchBar *customerSearchbar;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
//    _searchView = [DVVSearchView new];
//    [_searchView setDidBeginEditingBlock:^(UITextField *textField) {
//        NSLog(@"\n");
//        NSLog(@"已经开始编辑 text: %@", textField.text);
//    }];
//    [_searchView setDidEndEditingBlock:^(UITextField *textField) {
//        NSLog(@"\n");
//        NSLog(@" 已经结束编辑 text: %@", textField.text);
//    }];
//    [_searchView setTextChangeBlock:^(UITextField *textField) {
//        NSLog(@"\n");
//        NSLog(@"文本改变 text: %@", textField.text);
//    }];
    
//    [self.view addSubview:_searchView];
    
//    self.navigationItem.titleView=self.searchView;
    
//    UIView *navView=[[UIView  alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width,44)];
//    navView.backgroundColor=[UIColor whiteColor];
//    self.customerSearchbar=[[CDACustomerSearchBar  alloc]initWithFrame:CGRectMake(50,10,self.view.frame.size.width-100,24)];
//    self.customerSearchbar.delegate=self;
//    [navView addSubview:self.customerSearchbar];
//    self.navigationItem.titleView=navView;
//    
//    
//    
//    
//    self.customerSearchbar.barTintColor = [UIColor whiteColor];
//    self.customerSearchbar.showsCancelButton=YES;
//    //3. 设置按钮文字和颜色
//    //3. 设置按钮文字和颜色
//    [self.customerSearchbar fm_setCancelButtonTitle:@"取消"];
//    self.customerSearchbar.tintColor = [UIColor redColor];
//    //设置取消按钮字体
//    [self.customerSearchbar fm_setCancelButtonFont:[UIFont systemFontOfSize:16]];
//    //修正光标颜色
//    //    [searchField setTintColor:[UIColor blackColor]];
//    
//    //4. 设置输入框文字颜色和字体
//    //    [self.customSearchBar fm_setTextColor:[UIColor blackColor]];
//    //    [self.customSearchBar fm_setTextFont:[UIFont systemFontOfSize:14]];
//    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"跳" forState:UIControlStateNormal];
    
    btn.frame=CGRectMake(0,0,200,44);
    self.navigationItem.titleView=btn;
    
    [btn addTarget:self action:@selector(btnC:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)btnC:(UIButton *)btn{
    
    SearchVIewCViewController *vc=[[SearchVIewCViewController alloc]init];
    UINavigationController *nav=[[UINavigationController  alloc]initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
//    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
//    _searchView.frame = CGRectMake(0, 100, screenWidth, DVVSearchViewHeight);
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [self.view endEditing:YES];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
