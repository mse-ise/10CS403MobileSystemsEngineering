#import<Foundation/Foundation.h>
#import"Tax.h"
#import"Bill.h"

@interface TaxCalculator:NSObject

-(void)Calc:(Bill*) bill;

@end
