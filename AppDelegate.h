//
//  AppDelegate.h
//  SqueezeLite
//
//  Created by Leonid on 11/11/16.
//  Copyright © 2016 Leonid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

