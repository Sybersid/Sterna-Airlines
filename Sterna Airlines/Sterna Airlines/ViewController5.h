//
//  ViewController5.h
//  Sterna Airlines
//
//  Created by Sid Suresh on 12/10/15.
//  Copyright © 2015 Sid Suresh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController5 : UIViewController{
    IBOutlet UITextField *DepartText;
    IBOutlet UIPickerView *Picker;
    NSArray *PickerData;
    
}

@property (retain, nonatomic) IBOutlet UIPickerView *Picker;
@property (weak, nonatomic) IBOutlet UITextField *PriceText;
@property (retain, nonatomic) IBOutlet NSArray *PickerData;
- (IBAction)OneWay:(id)sender;
- (IBAction)RoundTrip:(id)sender;

@end
