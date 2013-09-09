#import "Dictionary.h"

@implementation Dictionary

@synthesize dictionary;

-(void) print
{
    NSLog(@"\nMeasure       Value\n");    
    for (id dict in dictionary)
    {
        if([dict rangeOfString:@"meter"].location!=NSNotFound)
        {
            id d = [dictionary objectForKey:dict];
            NSLog(@"\n  %@          %@\n", d, dict);
        }
    }
}

@end
