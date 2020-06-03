//
//  ViewController.h
//  Calculator
//
//  Created by Suhail N' Khan on 03/06/20.
//  Copyright © 2020 Flux. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PLUS 0;
#define MINUS 1;
#define MULTIPLY 2;
#define DIVIDE 3;
@interface ViewController : UIViewController

{
    NSInteger num1;
    NSInteger num2;
    double answer;
    NSInteger oprand;
    NSString *theNumber;
    IBOutlet UILabel *lblText;
}

  @property NSInteger num1;
    @property NSInteger num2;
    @property double answer;
    @property NSInteger oprand;
    @property(strong, nonatomic) NSString *theNumber;
    @property(strong, nonatomic) IBOutlet UILabel *lblText;
- (IBAction)press9:(id)sender;
- (IBAction)press8:(id)sender;
- (IBAction)press7:(id)sender;
- (IBAction)press6:(id)sender;
- (IBAction)press5:(id)sender;
- (IBAction)press4:(id)sender;
- (IBAction)press3:(id)sender;
- (IBAction)press2:(id)sender;
- (IBAction)press1:(id)sender;
- (IBAction)press0:(id)sender;
- (IBAction)setPlus:(id)sender;
- (IBAction)setMinus:(id)sender;
- (IBAction)SetMultiply:(id)sender;
- (IBAction)setDivide:(id)sender;
- (IBAction)calculate:(id)sender;
- (IBAction)clear:(id)sender;



@end

