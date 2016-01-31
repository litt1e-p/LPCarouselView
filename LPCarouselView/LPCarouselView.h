//
//  LPCarouselView.h
//  LPCarouselViewSample
//
//  Created by litt1e-p on 16/1/30.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CarouselViewPageControlPosition)
{
    CarouselViewPageControlPositionCenter,
    CarouselViewPageControlPositionRight,
    CarouselViewPageControlPositionLeft
};

typedef NS_ENUM(NSInteger, CarouselImageType)
{
    CarouselImageTypeLocal,
    CarouselImageTypeRemote
};

typedef void(^DidSelectCarouselItemBlock)(NSInteger);
typedef NSArray *(^ImagesDataSourceBlock)();
typedef NSArray *(^TitlesDataSourceBlock)();

@interface LPCarouselView : UIView

@property (nonatomic, assign) CarouselViewPageControlPosition pageControlPosition;
@property (nonatomic, assign) CGFloat scrollDuration;

+ (instancetype)carouselViewWithFrame:(CGRect)frame
                     placeholderImage:(UIImage *)placeholderImage
                               images:(ImagesDataSourceBlock)images
                               titles:(TitlesDataSourceBlock)titles
                        selectedBlock:(DidSelectCarouselItemBlock)selectedBlock;
@end
