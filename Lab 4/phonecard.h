#import <Foundation/Foundation.h>

@interface phoneCard: NSObject
{
	NSString *name;
	NSString *email;
	int phone;
}

@property (copy)NSString* name;
@property (copy)NSString* email;
@property int phone;

-(void) print;

@end
