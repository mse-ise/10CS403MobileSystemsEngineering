#import<Foundation/Foundation.h>

@interface Calculator:NSObject
{
	double num1;
	double num2;
}

//Function declarations.
-(void)setNum1:(double)num;
-(void)setNum2:(double)num;
-(double)add;
-(double)subtract;
-(double)multiply;
-(double)divide;

@end

