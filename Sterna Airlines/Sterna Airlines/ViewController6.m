//
//  ViewController6.m
//  Sterna Airlines
//
//  Created by Sid Suresh on 12/17/15.
//  Copyright © 2015 Sid Suresh. All rights reserved.
//

#import "ViewController6.h"

@interface ViewController6 ()

@end

@implementation ViewController6

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (! [defaults boolForKey:@"registered"]) {
        NSLog(@"No user registered");
        _Loginbtn.hidden = YES;
    }
    else {
        NSLog(@"User is registered");
        _Reneter.hidden = YES;
        _Registerbtn.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)Register:(id)sender {
    if ([_User.text isEqualToString:@""] || [_Password.text isEqualToString:@""] || [_Reneter.text isEqualToString:@""]) {
        //NSLog(@"Error, all fields must be filled in");
        
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You must complete all fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [error show];
    }
    else {
        [self checkPasswordsMatch];
    }
}

- (void) checkPasswordsMatch {
    if ([_Password.text isEqualToString:_Reneter.text]) {
        NSLog(@"Passowrds Match!");
        [self registerNewUser];
    }
    else {
        NSLog(@"Passwords don't Match");
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"Your entered Passwords don't Match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [error show];
    }
}
- (void) registerNewUser {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:_User.text forKey:@"Username"];
    [defaults setObject:_Password forKey:@"Passoword"];
    [defaults setBool:YES forKey:@"Registered"];
    
    [defaults synchronize];
    
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Success" message:@"You have Registered a New User"
                                                     delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [success show];
    
    [self performSegueWithIdentifier:@"login" sender:self];
}


- (IBAction)Login:(id)sender {
}
@end

