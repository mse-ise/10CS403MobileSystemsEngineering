#import "Tax.h"
#import "Bill.h"
#import "KSTCST.h"

@implementation KSTandCST:Tax
-(void)CalculateTax:(Bill*) bill
{
    float rate = 0.14 + 0.04;
    float amt = [bill amount];
    totalAmount = amt + (amt * rate);
    totalTax=amt * rate;
}
@end
