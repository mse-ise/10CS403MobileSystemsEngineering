#import<Foundation/Foundation.h>
#import"Tax.h"
#import"Bill.h"
#import "KSTCST.h"
#import "VAT.h"
#import"TaxCalculator.h"

@implementation TaxCalculator

-(void)Calc:(Bill*) bill
{
    NSString *type=[[NSString alloc]init];
    type=[bill Type];
  
    if([type isEqualToString:@"finishedgoods"])
    {  
        KSTandCST *kstcst = [[KSTandCST alloc]init];
        [kstcst CalculateTax:bill];
        [kstcst printTax]; 
    }
    else if([type isEqualToString:@"grocery"])
    {
        Vat *vatcal= [[Vat alloc]init];
        [vatcal CalculateTax:bill];
        [vatcal printTax];
    }
    [type release];
}
@end
