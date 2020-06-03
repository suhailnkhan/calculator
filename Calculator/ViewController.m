//
//  ViewController.m
//  Calculator
//
//  Created by Suhail N' Khan on 03/06/20.
//  Copyright © 2020 Flux. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize num1,num2,answer,oprand,lblText,theNumber;
- (void)viewDidLoad {
    [super viewDidLoad];

    [self setNum1:0];
    [self setNum2:0];
    [self setOprand:0 ];
    [self setAnswer:0.0];
    [self setTheNumber:@"0"];
    [self printNumber];
    
}

-(void) printNumber{
    [lblText setText:theNumber];
        
}
-(void) saveNum1{
    
    num1 =[theNumber integerValue];
    theNumber =@"0";
    [self printNumber];
    
}
- (IBAction)clear:(id)sender {
    
    theNumber = @"0";
    [self printNumber];
    
}

- (IBAction)calculate:(id)sender {
    
    
    num2 = [theNumber integerValue];
    if (oprand == 0) {
        answer = num1+num2;
    }else if(oprand == 1 ){
         answer = num1-num2;
    }else if (oprand == 2 ){
        answer = num1*num2;}
    else if (oprand == 3){
    
        if (num2 == 0) {
       
        }else{
        answer = (double)num1/(double)num2;
        }
    }
    theNumber = [NSString stringWithFormat:@"%f",answer];
    [self printNumber];
    num1 = 0;
    num2 = 0;
    answer = 0.0;
}

- (IBAction)setDivide:(id)sender {
            [self saveNum1];
          oprand = DIVIDE ;

    
}




- (IBAction)SetMultiply:(id)sender {
    [self saveNum1];
       oprand = MULTIPLY ;

}

- (IBAction)setMinus:(id)sender
{ [self saveNum1];
       oprand = MINUS ;
}

- (IBAction)setPlus:(id)sender {
    
    [self saveNum1];
    oprand = PLUS ;
    
}

- (IBAction)press0:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"0"];
          [self printNumber];
          
}

- (IBAction)press1:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"1"];
          [self printNumber];
          
}

- (IBAction)press2:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"2"];
          [self printNumber];
          
}

- (IBAction)press3:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"3"];
          [self printNumber];
          
}

- (IBAction)press4:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"4"];
          [self printNumber];
          
}

- (IBAction)press5:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"5"];
          [self printNumber];
          
}

- (IBAction)press6:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"6"];
          [self printNumber];
          
}

- (IBAction)press7:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"7"];
          [self printNumber];
          
}

- (IBAction)press8:(id)sender {
    theNumber =[theNumber stringByAppendingString:@"8"];
          [self printNumber];
          
}

- (IBAction)press9:(id)sender {
    
    theNumber =[theNumber stringByAppendingString:@"9"];
       [self printNumber];
       
}
@end

