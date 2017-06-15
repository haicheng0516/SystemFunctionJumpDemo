//
//  AppDelegate.h
//  SystemDemo
//
//  Created by 郭健 on 2017/6/15.
//  Copyright © 2017年 SeaCity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

