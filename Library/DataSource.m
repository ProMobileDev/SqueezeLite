//
//  DataSource.m
//  SM-DropDownTableView
//
//  Created by Huq Majharul on 1/10/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

+ (NSArray *)option_one
{
    return @[
             @{
                 @"title": @"Found Server"
                 },
             @{
                 @"title": @"server one"
                 },
             @{
                 @"title": @"server two"
                 }
             ];
}
+ (NSArray *)option_two
{
    return @[
             @{
                 @"title": @"Saved Server"
                 }
            ];
}
+ (NSArray *)option_three
{
    return @[
             @{
                 @"title": @"Current Server"
                 }
             ];
}

@end
