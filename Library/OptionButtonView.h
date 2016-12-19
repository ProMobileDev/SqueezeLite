//
//  OptionButtonView.h
//  SM-DropDownTableView
//
//  Created by Huq Majharul on 1/10/16.
//  Copyright © 2016 Huq Majharul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KHFLatButton.h"

#define ViewHeight 236.0f

@interface OptionButtonView : UIView<UITableViewDelegate,UITableViewDataSource>
{
    IBOutlet    KHFlatButton        *buttonMain;
    IBOutlet    UIImageView         *imageViewArrow;
    IBOutlet    UITableView         *tableViewList;
    
    CGRect      rectInitTableView;
    CGRect      rectTargetTableView;
    NSInteger   selectedCellIndex;
    
    int targetIndex;
}

@property(nonatomic,retain) NSArray         *arrTableData;
@property(nonatomic,retain) NSMutableArray  *arrBottomViews;

- (void)load:(int) index;

- (IBAction)actionPressButton:(id)sender;

@end
