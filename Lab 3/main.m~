#import<Foundation/Foundation.h>
#import "Tax.h"
#import "Bill.h"
#import "TaxCalculator.h"

int main()
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    Bill *bill = [[Bill alloc] init];
   
    float amount ;
    char str[256];
    printf("Enter the product: ");
    scanf("%s",str);
  
    printf("Enter the bill value: ");
    scanf("%f",&amount);
   
    NSString *type = [NSString stringWithUTF8String:str];
    [bill setType:type];
    [bill setAmount:amount];
   
    TaxCalculator *tax =[[TaxCalculator alloc]init];
   
    [tax Calc:bill];
   
    //[type release];
    [bill release];
    [tax release];  
    [pool release];
    return 0;
}
   
