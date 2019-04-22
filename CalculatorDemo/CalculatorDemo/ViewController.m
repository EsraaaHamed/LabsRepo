//
//  ViewController.m
//  CalculatorDemo
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(Boolean) validation :(NSString*)x :(NSString*)y
{
    Boolean flag;
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    NSNumber *firstnumber = [formatter numberFromString:x];
    NSNumber *secondnumber = [formatter numberFromString:y];
    if (firstnumber&&secondnumber) {
        flag=true;
    } else {
         NSLog(@"This is a Pure num");
        flag=false;
    }
    return flag;
}


- (IBAction)addBtn:(UIButton *)sender {
    Boolean returnFlag=[self validation:_firstNumTf.text :_secondTf.text ];
    if(!returnFlag)
    {
        NSLog(@"your input is not a number");
        _resultTV.text=@"your input is not a number";
    }
    else
    {
    int firstNum=[_firstNumTf.text intValue];
    
    int secondNum=[_secondTf.text intValue];
    NSString *result = [[NSString alloc] initWithFormat:@"%d", firstNum+secondNum];
    _resultTV.text=result;
    }
    
}

- (IBAction)subtractBtn:(UIButton *)sender {
    Boolean returnFlag=[self validation:_firstNumTf.text :_secondTf.text ];
    if(!returnFlag)
    {
        NSLog(@"your input is not a number");
        _resultTV.text=@"your input is not a number";
    }
    else
    {
    int firstNum=[_firstNumTf.text intValue];
    
    int secondNum=[_secondTf.text intValue];
    NSString *result = [[NSString alloc] initWithFormat:@"%d", firstNum-secondNum];
    _resultTV.text=result;
    }
}

- (IBAction)multiplyBtn:(UIButton *)sender {
    Boolean returnFlag=[self validation:_firstNumTf.text :_secondTf.text ];
    if(!returnFlag)
    {
        NSLog(@"your input is not a number");
        _resultTV.text=@"your input is not a number";
    }
    else{
    int firstNum=[_firstNumTf.text intValue];
    
    int secondNum=[_secondTf.text intValue];
    
    
    NSString *result = [[NSString alloc] initWithFormat:@"%d", firstNum*secondNum];
    _resultTV.text=result;
    }
}

- (IBAction)divideBtn:(UIButton *)sender {
    Boolean returnFlag=[self validation:_firstNumTf.text :_secondTf.text ];
    if(!returnFlag)
    {
        NSLog(@"your input is not a number");
        _resultTV.text=@"your input is not a number";
    }
    else{
    int firstNum=[_firstNumTf.text intValue];
    
    int secondNum=[_secondTf.text intValue];
    NSString *result = [[NSString alloc] initWithFormat:@"%d", firstNum/secondNum];
    _resultTV.text=result;
    }
}
@end
