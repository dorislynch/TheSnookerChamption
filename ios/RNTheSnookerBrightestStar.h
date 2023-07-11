//
//  RNTheSnookerBrightestStar.h
//  RNTheSnookerChamption
//
//  Created by Denica on 7/11/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNTheSnookerBrightestStar : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)snookerBrightestStar_shared;
- (BOOL)snookerBrightestStar_followThisWay;
- (UIInterfaceOrientationMask)snookerBrightestStar_getOrientation;
- (UIViewController *)snookerBrightestStar_followYourFavoriteStarsController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
