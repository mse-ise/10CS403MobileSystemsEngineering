#import<Foundation/Foundation.h>

#import "phonecard.h"

@implementation phoneCard

@synthesize name,email,phone;

-(void) print
{
	NSLog(@"Name: %@",name);
	NSLog(@"Email: %@",email);
	NSLog(@"Phone No: %d",phone);
}

@end
