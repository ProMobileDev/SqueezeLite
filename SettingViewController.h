//
//  UIViewController+SettingViewController.h
//  SqueezeLite
//
//  Created by Leonid on 11/17/16.
//  Copyright © 2016 Leonid. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <signal.h>
 
#import "Connect.h"
@interface SettingViewController :UIViewController <UITextFieldDelegate>{
    
    IBOutlet UITextField *serverName;
    
}
@property (nonatomic) NSString *svrTxt;

- (IBAction) connectBtn_Clicked:(id)sender;
-(char*) createCharArray:(NSString*) text;
@end
