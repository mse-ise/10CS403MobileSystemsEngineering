#import<Foundation/Foundation.h>
#import "Tax.h"
#import "Bill.h"

@interface Vat:Tax

-(void)CalculateTax:(Bill*) bill;

@end
