#import<Foundation/Foundation.h>
#import "Bill.h"

@interface Tax:NSObject
{
    float totalTax;
    float totalAmount;
}

-(void)printTax;
-(void)CalculateTax:(Bill*) bill;

@end
