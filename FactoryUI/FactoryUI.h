//
//  FactoryUI.h
//  FactoryUI
//
//  Created by 范云飞 on 2017/4/14.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface FactoryUI : NSObject

/**
 UIView 的创建

 @param frame 约束
 @param color 背景色
 @param supperView 父视图
 @return UIView
 */
+ (UIView*)createViewWithFrame:(CGRect)frame AndBackgroundColor:(UIColor*)color AndSupperView:(UIView*)supperView;

/**
 UIlabel 的创建

 @param frame 约束
 @param text  文本
 @param font 字体大小
 @param alignment 文本alignment
 @param number 行数
 @param supperView 父视图
 @return UIlabel
 */
+ (UILabel*)createLableWithFrame:(CGRect)frame AndText:(NSString*)text AndFont:(UIFont*)font AndTextAligment:(NSTextAlignment)alignment AndNumberOfLines:(NSInteger)number AndSupperView:(UIView*)supperView;

/**
 UIImageView 的创建

 @param frame 约束
 @param imageName 本地图片名字
 @param supperView 父视图
 @return UIImageView
 */
+ (UIImageView*)createImageViewWithFrame:(CGRect)frame AndImageNamed:(NSString*)imageName AndSupperView:(UIView*)supperView;

/**
 UITextField 的创建

 @param frame 约束
 @param borderstyle 边线风格
 @param placeholder 占位
 @param textAligment 文本的textAligment
 @param delegate delegate description
 @param supperView 父视图
 @return UITextField
 */
+ (UITextField*)createTextFieldWithFrame:(CGRect)frame AndBorderStyle:(UITextBorderStyle)borderstyle AndPlaceholder:(NSString*)placeholder AndTextAlignment:(NSTextAlignment)textAligment AndDelegate:(id<UITextFieldDelegate>)delegate AndSupperView:(UIView*)supperView;

/**
 UITextView 的创建

 @param frame 约束
 @param delegate 代理
 @param supperView 父视图
 @return UITextView
 */
+ (UITextView*)createTextViewWithFrame:(CGRect)frame AndDelegate:(id<UITextViewDelegate>)delegate AndSupperView:(UIView*)supperView;

/**
 UIButton 的创建

 @param buttonType 按钮的buttonType
 @param frame 约束
 @param title 标题
 @param imageName 图片名称
 @param state 按钮的state
 @param objc  按钮的观察者
 @param seletor 方法
 @param controlEvents 按钮UIControlEvents
 @param supperView 父视图
 @return UIButton
 */
+ (UIButton*)createButtonWithType:(UIButtonType)buttonType AndFrame:(CGRect)frame AndTitle:(NSString*)title AndImageNamed:(NSString*)imageName WithState:(UIControlState)state AndAddTarget:(id)objc action:(SEL)seletor forControlEvents:(UIControlEvents)controlEvents AndSupperView:(UIView*)supperView;

/**
 UITableView 的创建

 @param frame 约束
 @param style 风格（grouped和plain）
 @param viewController tableView的代理
 @return UITableView
 */
+ (UITableView*)createTableViewWithFrame:(CGRect)frame AndStyle:(UITableViewStyle)style AndDelegate:(id<UITableViewDelegate,UITableViewDataSource>)viewController;

/**
 UICollectionView

 @param frame 约束
 @param collentionViewLayout ViewLayout
 @param viewController collectionView的代理
 @return UICollectionView
 */
+ (UICollectionView*)createCollectionViewWithFrame:(CGRect)frame AndCollectionViewLayout:(UICollectionViewLayout*)collentionViewLayout AndDelegate:(id<UICollectionViewDelegate,UICollectionViewDataSource>)viewController;


@end
