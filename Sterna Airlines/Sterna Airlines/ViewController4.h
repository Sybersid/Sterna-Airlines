//
//  ViewController4.h
//  Sterna Airlines
//
//  Created by Sid Suresh on 12/17/15.
//  Copyright © 2015 Sid Suresh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController4 : UIViewController{
    IBOutlet UITextField *ClassText;
    IBOutlet UIPickerView *Picker;
    NSArray *PickerData;
    
}

@property (retain, nonatomic) IBOutlet UIPickerView *Picker;
@property (retain, nonatomic) IBOutlet NSArray *PickerData;
@end
