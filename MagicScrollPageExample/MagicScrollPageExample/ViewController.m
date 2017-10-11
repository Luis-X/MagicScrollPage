//
//  ViewController.m
//  MagicScrollPageExample
//
//  Created by LuisX on 2017/10/11.
//  Copyright © 2017年 LuisX. All rights reserved.
//

#import "ViewController.h"
#import "MagicScrollPage.h"
#import <Masonry/Masonry.h>

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController{
    MagicScrollPage *_mainScrollView;        //主ScrollView
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createMainView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createMainView{
    
    UITableView *firtTableView = [UITableView new];
    firtTableView.backgroundColor = [UIColor whiteColor];
    firtTableView.dataSource = self;
    firtTableView.delegate = self;
    [firtTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    UIScrollView *secondScrollView = [UIScrollView new];
    UILabel *textLabel = [UILabel new];
    [secondScrollView addSubview:textLabel];
    textLabel.text = @"Page 2";
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(secondScrollView);
    }];
    
    _mainScrollView = [MagicScrollPage showScrollPageViewWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64) firstPage:firtTableView secondPage:secondScrollView];
    [self.view addSubview:_mainScrollView];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"Page 1";
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
    
}
@end
