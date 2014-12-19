//
//  UIView+ZLAutoLayout.h
//  ZLAutoLayout
//
//  Created by 张磊 on 14-12-4.
//  Copyright (c) 2014年 com.zixue101.www. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ZLAutoLayoutDirection){
    /** The left of the view. */
    ZLAutoLayoutDirectionLeft = NSLayoutAttributeLeft,
    /** The right of the view. */
    ZLAutoLayoutDirectionRight = NSLayoutAttributeRight,
    /** The top of the view. */
    ZLAutoLayoutDirectionTop = NSLayoutAttributeTop,
    /** The bottom of the view. */
    ZLAutoLayoutDirectionBottom = NSLayoutAttributeBottom,
    /** The leading of the view  */
    ZLAutoLayoutDirectionLeading = NSLayoutAttributeLeading,
    /** The trailing of the view */
    ZLAutoLayoutDirectionTrailing = NSLayoutAttributeTrailing
};

typedef NS_ENUM(NSUInteger, ZLAutoLayoutSize){
    /** The width of the view. */
    ZLAutoLayoutSizeWidth = NSLayoutAttributeWidth,
    /** The height of the view. */
    ZLAutoLayoutSizeHeight = NSLayoutAttributeHeight,
};

@interface UIView (ZLAutoLayout)

+ (instancetype) instanceAutoLayoutView;
/**
 *  frame transfrom AutoLayout
 */
- (void)setAutoLayout:(BOOL)layout;
- (BOOL)isAutoLayout;

/**
 *  Current view EqualTo superView autoLayout.
 *
 *  @param direction    ZLAutoLayoutDirection
 */
- (void)autoPinSuperViewDirection:(ZLAutoLayoutDirection)direction;

/**
 *  Current view EqualTo superView autoLayout + inset.
 *
 *  @param direction    ZLAutoLayoutDirection
 *  @param withInset    Inset
 */
- (void)autoPinSuperViewDirection:(ZLAutoLayoutDirection)direction withInset:(CGFloat)inset;

/**
 *  Current view EqualTo ofView autoLayout.
 *
 *  @param direction    ZLAutoLayoutDirection
 *  @param toDircetion  OfView ZLAutoLayoutDirection
 */
- (void)autoPinDirection:(ZLAutoLayoutDirection)direction toPinDirection:(ZLAutoLayoutDirection)toDircetion ofView:(UIView *)view;

/**
 *  Current view EqualTo ofView autoLayout + inset.
 *
 *  @param direction    ZLAutoLayoutDirection
 *  @param toDircetion  OfView ZLAutoLayoutDirection
 *  @param withInset    Inset
 */
- (void)autoPinDirection:(ZLAutoLayoutDirection)direction toPinDirection:(ZLAutoLayoutDirection)toDircetion ofView:(UIView *)view withInset:(CGFloat)inset;

/**
 *  Set view width && height
 */
- (void)autoSetViewSize:(CGSize)size;
- (void)autoSetViewSizeWidthOrHeight:(ZLAutoLayoutSize)alSize withInset:(CGFloat)inset;

/**
 *  Set view width || height -> ofView
 *
 *  @param alSize ZLAutoLayoutSize
 *  @param ofView ofView
 */
- (void)autoSetViewSizeWidthOrHeight:(ZLAutoLayoutSize)alSize ofView:(UIView *)ofView;

/**
 *  Equal view to superView autoLayout
 */
- (void)autoEqualToSuperViewAutoLayouts;

@end
