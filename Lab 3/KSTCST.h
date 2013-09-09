#import<Foundation/Foundation.h>
#import "Tax.h"
#import "Bill.h"

@interface KSTandCST:Tax

-(void)CalculateTax:(Bill*) bill;

@end
