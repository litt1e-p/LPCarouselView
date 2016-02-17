//
//  ViewController.m
//  LPCarouselViewSample
//
//  Created by litt1e-p on 16/1/30.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "ViewController.h"
#import "LPCarouselView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //load remote images
    LPCarouselView *cv = [LPCarouselView carouselViewWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 150) placeholderImage:[UIImage imageNamed:@"carousel01"] images:^NSArray *{
        return @[
                 @"https://d13yacurqjgara.cloudfront.net/users/3460/screenshots/1667332/pickle.png",
                 @"https://d13yacurqjgara.cloudfront.net/users/610286/screenshots/2012918/eggplant.png",
                 @"https://d13yacurqjgara.cloudfront.net/users/514774/screenshots/1985501/ill_2-01.png",
                 ];
    } titles:^NSArray *{
        return @[@"NO. 1", @"NO. 2", @"NO. 3"];
    } selectedBlock:^(NSInteger index) {
        NSLog(@"clicked1----%zi", index);
    }];
//    cv.scrollDuration = 1.f;
    cv.titleLabelTextColor = [UIColor purpleColor];
    cv.pageControlCurrentPageColor = [UIColor redColor];
    cv.pageControlNormalPageColor = [UIColor grayColor];
    cv.turnOffInfiniteLoop = YES;
    [self.view addSubview:cv];
    
    //load local images
    LPCarouselView *cv2 = [LPCarouselView carouselViewWithFrame:CGRectMake(0, 400, self.view.bounds.size.width, 150) placeholderImage:nil images:^NSArray *{
        return @[
                 @"carousel01.png",
                 @"carousel02.png",
                 @"carousel03.png",
                 @"carousel04.png",
                 @"carousel05.png",
                 ];
    } titles:^NSArray *{
        return @[@"NO. 1", @"NO. 2", @"NO. 3", @"NO. 4", @"NO. 5"];
    } selectedBlock:^(NSInteger index) {
        NSLog(@"clicked2----%zi", index);
    }];
    cv2.carouselImageViewContentMode = UIViewContentModeScaleAspectFit;
    cv2.scrollDuration = 2.f;
    [self.view addSubview:cv2];
}

@end
