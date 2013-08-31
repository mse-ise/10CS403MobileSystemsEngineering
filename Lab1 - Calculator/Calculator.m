#import "Calculator.h"

@implementation Calculator:NSObject

///Function definitions.
-(void)setNum1:(double)num
{
	num1 = num;
}

-(void)setNum2:(double)num
{
	num2 = num;
}

-(double)add
{
	return (num1+num2);
}

-(double)subtract
{
	return (num1-num2);
}

-(double)multiply
{
	return (num1*num2);
}

-(double)divide
{
	if(num2==0)
	{
		NSLog(@"Divide by 0 error");
		return 0.0;
	}
	return (num1/num2);
}

@end
