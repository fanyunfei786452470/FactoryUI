//
//  ViewController.m
//  FactoryUI
//
//  Created by 范云飞 on 2017/4/14.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import "ViewController.h"
#import "FactoryUI.h"
#import "Masonry.h"
#import "UILabel+heightAndwidth.h"
#define UI_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define UI_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

//适配frame
#define SP_SCREEN UI_SCREEN_WIDTH/375
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIButton * button = [FactoryUI createButtonWithType:UIButtonTypeCustom AndFrame:CGRectZero AndTitle:@"shabi" AndImageNamed:@"" WithState:UIControlStateNormal AndAddTarget:self action:@selector(play:) forControlEvents:UIControlEventTouchUpInside AndSupperView:self.view];
//    button.backgroundColor = [UIColor redColor];
//    [self.view addSubview:button];
//    
//    [button mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(64);
//        make.centerX.mas_equalTo(self.view.mas_centerX);
//        make.size.mas_equalTo(CGSizeMake(100, 100));
//    }];
    
//    UILabel * label = [FactoryUI createLableWithFrame:CGRectZero AndText:@"" AndFont:[UIFont systemFontOfSize:20] AndTextAligment:NSTextAlignmentRight AndNumberOfLines:0  AndSupperView:self.view];
//    [label setLineSpace:8 withLabelText:@"职场上的门当户对实际上是公司和个人建立在工作协作基础上的合作关系，所谓的协作就是协同互补共进，合作就是共赢。个人和公司有共同的气质和气场环境，有一致的长短期目标，在能力的供需上互补匹配彼此欣赏，这样的合作关系才能长久有生命力。" withFont:[UIFont systemFontOfSize:20] withZspace:@1.5 Width:UI_SCREEN_WIDTH - 40];
//    [label sizeToFit];
//    label.backgroundColor = [UIColor redColor];
//    
//    [label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(100);
//        make.left.mas_equalTo(20);
//        make.right.mas_equalTo(-20);
//    }];
    
    UITableView * tableView = [FactoryUI createTableViewWithFrame:CGRectZero AndStyle:UITableViewStylePlain AndDelegate:self];
    tableView.tableFooterView = [[UIView alloc]init];
    [self.view addSubview:tableView];
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.mas_equalTo(self.view);
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * identifyId = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifyId];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifyId];
    }
    cell.textLabel.text = @"你妹啊";
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
