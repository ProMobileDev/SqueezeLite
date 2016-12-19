//
//  UIViewController+SettingViewController.m
//  SqueezeLite
//
//  Created by Leonid on 11/17/16.
//  Copyright © 2016 Leonid. All rights reserved.
//

#import "SettingViewController.h"
#import "OptionButtonView.h"

@interface SettingViewController ()

@end
@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OptionButtonView *foundSeverView                 = [[OptionButtonView alloc]initWithFrame:CGRectMake(30,70, self.view.frame.size.width, ViewHeight)];
    [foundSeverView load:1];
    [self.view addSubview:foundSeverView];
 

    OptionButtonView *savedServerView               = [[OptionButtonView alloc]initWithFrame:CGRectMake(30,185, self.view.frame.size.width, ViewHeight)];
    [savedServerView load:2];
    [self.view addSubview:savedServerView];
   

    OptionButtonView *currentServerView             = [[OptionButtonView alloc]initWithFrame:CGRectMake(30,300, self.view.frame.size.width, ViewHeight)];
    [currentServerView load:3];
    [self.view addSubview:currentServerView];
   
    serverName.enabled = true;
    serverName.delegate = self;
    
   

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) connectBtn_Clicked:(id)sender{
    
    Connect * newConnect = [Connect init];
    //char** str = [self createCharArray:_svrTxt];
   // [newConnect main:1 argv:"asdfadsf"];
    //[newConnect main];
    
}
-(char*) createCharArray:(NSString*) text{
    char arr[text.length];
    for(int i=0;i<text.length;i++){
        arr[i]=[text characterAtIndex:i];
    }
    return  arr;
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return true;
    
}        // return NO to disallow editing.
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
}           // became first responder
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    return true;
    
}       // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
- (void)textFieldDidEndEditing:(UITextField *)textField{
    [serverName resignFirstResponder];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    _svrTxt = serverName.text;
    
    return true;
}
@end
