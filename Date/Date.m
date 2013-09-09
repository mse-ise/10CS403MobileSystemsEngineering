#import "Date.h"

@implementation Date
@synthesize now, dayAfter, lastThursday;

-(void) print
{
   NSLog(@"Today is: %@", now);
   NSLog(@"Day after tomorrow is: %@", dayAfter);
}

-(void) earlier
{
    switch ([now compare:dayAfter])
    {
        case NSOrderedAscending:
                                NSLog(@"Today is the earlier date.");
                                break;
        case NSOrderedSame:
                                NSLog(@"The dates are the same.");
                                break;
        case NSOrderedDescending:
                                NSLog(@"Day after is the earlier date.");
                                break;
   }
}

-(void) lastThursday
{
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"EEEE"];    
    
    
    NSDate *thursday = [NSDate date];

    NSTimeInterval secondsInDays = 24 * 60 * 60;
    NSString *day = [format stringFromDate:now];

    if(![day isEqualToString:@"Thursday"])
    {
        while(![day isEqualToString:@"Thursday"])
        {
            thursday = [thursday addTimeInterval:-secondsInDays];
            day = [format stringFromDate:thursday];
        }
    }
    else
    {
        thursday = [thursday addTimeInterval:-secondsInDays * 7];
    }
    NSLog(@"Last Thursday was: %@",thursday);
}

-(void) tenthDay
{
    int i = 0;

    NSArray *days = [NSArray arrayWithObjects:@"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", @"Sunday", nil];

    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"EEEE"];

    //NSTimeInterval secondsInDays = 24 * 60 * 60;
    
    NSString *first = [format stringFromDate:now];
    while(![first isEqualToString:[days objectAtIndex:i]]) 
        i++;
    NSLog(@"First day is: %@",[days objectAtIndex:i]);
    i=(i+10)%7;
    NSLog(@"Tenth day: %@",[days objectAtIndex:i]);
}

@end
