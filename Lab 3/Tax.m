#import<Foundation/Foundation.h>
#import "Bill.h"
#import "Tax.h"

@implementation Tax

-(void)printTax
{
    NSLog(@"The total tax is: %.2f",totalTax);
    NSLog(@"The total bill amount is: %.2f",totalAmount);
}

-(void)CalculateTax:(Bill*) bill
{
    printf("Default");
}

@end
