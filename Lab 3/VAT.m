#import "Tax.h"
#import "Bill.h"
#import "VAT.h"

@implementation Vat

-(void)CalculateTax:(Bill*) bill
{
    float rate = 0.08;
    float amt = [bill amount];
    totalAmount = amt + (amt * rate);
    totalTax = amt * rate;
}

@end
