#import "Calculator.m"
#import<Foundation/Foundation.h>
#include<stdio.h>

int main(int argc, char *argv[])
{
	double num1, num2;
	Calculator *calc = [[Calculator alloc]init];
	NSLog(@"Enter 2 numbers: ");
	scanf("%lf %lf", &num1, &num2);

	[calc setNum1:num1];
	[calc setNum2:num2];

	NSLog(@"%.2lf + %.2lf = %.2lf", num1, num2, [calc add]);
	NSLog(@"%.2lf - %.2lf = %.2lf", num1, num2, [calc subtract]);
	NSLog(@"%.2lf * %.2lf = %.2lf", num1, num2, [calc multiply]);
	NSLog(@"%.2lf / %.2lf = %.2lf", num1, num2, [calc divide]);
	[calc release];
	return 0;
}
