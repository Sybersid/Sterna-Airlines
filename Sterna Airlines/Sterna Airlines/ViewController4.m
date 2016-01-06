//
//  ViewController4.m
//  Sterna Airlines
//
//  Created by Sid Suresh on 12/17/15.
//  Copyright © 2015 Sid Suresh. All rights reserved.
//

#import "ViewController4.h"

@interface ViewController4 ()

@end

@implementation ViewController4

@synthesize Picker,PickerData;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *array = [[NSArray alloc] initWithObjects:@"Economy",@"Economy Plus",@"Buisness",@"First", nil];
    self.PickerData = array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView: (UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
return [PickerData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.PickerData objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    int select = row;
    if (select == 0) {
        ClassText.text = @"Economy Class";
    }else
        if (select == 1) {
            ClassText.text = @"Economy Plus Class";
        }else
            if (select == 2) {
                ClassText.text = @"Buisness Class";
            }else
                if (select == 3) {
                    ClassText.text = @"First Class";
                }


                

}


@end
