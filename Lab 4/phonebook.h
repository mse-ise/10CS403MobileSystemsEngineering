#import<Foundation/Foundation.h>
#import "phonecard.h"

@interface phonebook:NSObject
{
	NSString* bname;
	NSMutableArray *cards;
}

@property (copy)NSMutableArray* cards;

-(void) edit;
-(void) printDetails;
-(void) count;
-(phoneCard *) search:(NSString*)sName;

@end
