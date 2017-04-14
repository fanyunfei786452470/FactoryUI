//
//  FactoryUI.m
//  FactoryUI
//
//  Created by 范云飞 on 2017/4/14.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import "FactoryUI.h"
#import "UILabel+heightAndwidth.h"
@implementation FactoryUI

+ (UIView*)createViewWithFrame:(CGRect)frame AndBackgroundColor:(UIColor*)color AndSupperView:(UIView*)supperView{
    UIView * view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = color;
    [supperView addSubview:view];
    return view;
}

+ (UILabel*)createLableWithFrame:(CGRect)frame AndText:(NSString*)text AndFont:(UIFont*)font AndTextAligment:(NSTextAlignment)alignment AndNumberOfLines:(NSInteger)number AndSupperView:(UIView*)supperView{
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.font = font;
    label.textAlignment = alignment;
    label.numberOfLines = number;
    [supperView addSubview:label];
    return label;
}

+ (UIImageView*)createImageViewWithFrame:(CGRect)frame AndImageNamed:(NSString*)imageName AndSupperView:(UIView*)supperView{
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:imageName];
    [supperView addSubview:imageView];
    return imageView;
}

+ (UITextField*)createTextFieldWithFrame:(CGRect)frame AndBorderStyle:(UITextBorderStyle)borderstyle AndPlaceholder:(NSString *)placeholder AndTextAlignment:(NSTextAlignment)textAligment AndDelegate:(id<UITextFieldDelegate>)delegate AndSupperView:(UIView *)supperView{
    UITextField * textField = [[UITextField alloc]initWithFrame:frame];
    textField.borderStyle = borderstyle;
    textField.placeholder = placeholder;
    textField.textAlignment = textAligment;
    textField.delegate = delegate;
    [supperView addSubview:textField];
    return textField;
}

+ (UITextView*)createTextViewWithFrame:(CGRect)frame AndDelegate:(id<UITextViewDelegate>)delegate AndSupperView:(UIView *)supperView{
    UITextView * textView = [[UITextView alloc]initWithFrame:frame];
    textView.delegate = delegate;
    [supperView addSubview:textView];
    return textView;
}

+ (UIButton*)createButtonWithType:(UIButtonType)buttonType AndFrame:(CGRect)frame AndTitle:(NSString*)title AndImageNamed:(NSString*)imageName WithState:(UIControlState)state AndAddTarget:(id)objc action:(SEL)seletor forControlEvents:(UIControlEvents)controlEvents AndSupperView:(UIView*)supperView{
    UIButton * button = [UIButton buttonWithType:buttonType];
    button.frame = frame;
    [button setTitle:title forState:state];
    [button setImage:[UIImage imageNamed:imageName] forState:state];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:state];
    [button addTarget:objc action:seletor forControlEvents:controlEvents];
    [supperView addSubview:button];
    return button;
}

+ (UITableView*)createTableViewWithFrame:(CGRect)frame AndStyle:(UITableViewStyle)style AndDelegate:(id<UITableViewDelegate,UITableViewDataSource>)viewController{
    UITableView * tableView = [[UITableView alloc]initWithFrame:frame style:style];
    tableView.delegate = viewController;
    tableView.dataSource = viewController;
    UIViewController * vc = (UIViewController*)viewController;
    [vc.view addSubview:tableView];
    return tableView;
}

+ (UICollectionView*)createCollectionViewWithFrame:(CGRect)frame AndCollectionViewLayout:(UICollectionViewLayout*)collentionViewLayout AndDelegate:(id<UICollectionViewDelegate,UICollectionViewDataSource>)viewController{
    UICollectionView * collectionView = [[UICollectionView alloc]initWithFrame:frame collectionViewLayout:collentionViewLayout];
    collectionView.delegate = viewController;
    collectionView.dataSource = viewController;
    UIViewController * vc = (UIViewController*)viewController;
    [vc.view addSubview:collectionView];
    return collectionView;
}

@end
