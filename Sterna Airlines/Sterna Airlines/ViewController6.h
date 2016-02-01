//
//  ViewController6.h
//  Sterna Airlines
//
//  Created by Sid Suresh on 12/17/15.
//  Copyright © 2015 Sid Suresh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController6 : UIViewController 
@property (weak, nonatomic) IBOutlet UITextField *User;

@property (weak, nonatomic) IBOutlet UITextField *Password;

@property (weak, nonatomic) IBOutlet UITextField *Reneter;

@property (weak, nonatomic) IBOutlet UIButton *Loginbtn;

@property (weak, nonatomic) IBOutlet UIButton *Registerbtn;

- (IBAction)Register:(id)sender;

- (IBAction)Login:(id)sender;
@end

