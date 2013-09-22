#import <Foundation/Foundation.h>
#import "phonecard.h"
#import "phonebook.h"

int main(int argc, char* argv[])
{
	char str[100],email[100]; int phone;
	NSAutoreleasePool *myPool=[[NSAutoreleasePool alloc]init];
	NSMutableArray *array = [[NSMutableArray alloc]init];

	phonebook *entries=[[phonebook alloc]init];

	phoneCard *first=[[phoneCard alloc]init];
	phoneCard *second=[[phoneCard alloc]init];
	phoneCard *third=[[phoneCard alloc]init];

	NSLog(@"Enter Name:\n");
	scanf("%s",str);
	NSString *name1=[NSString stringWithUTF8String:str];
	[first setName:name1];
	NSLog(@"Enter Email:\n");
	scanf("%s",email);
	NSString *email1=[NSString stringWithUTF8String:email];
	[first setEmail:email1];
	NSLog(@"Enter Phone Number:\n");
	scanf("%d",&phone);
	[first setPhone:phone];

	NSLog(@"Enter Name:\n");
	scanf("%s",str);
	NSString *name2=[NSString stringWithUTF8String:str];
	NSLog(@"Enter Email:\n");
	scanf("%s",email);
	NSString *email2=[NSString stringWithUTF8String:email];
	NSLog(@"Enter Phone Number:\n");
	scanf("%d",&phone);
		
	[second setName:name2];
	[second setEmail:email2];
	[second setPhone:phone];
	
	NSLog(@"Enter Name:\n");
	scanf("%s",str);
	NSString *name3=[NSString stringWithUTF8String:str];
	NSLog(@"Enter Email:\n");
	scanf("%s",email);
	NSString *email3=[NSString stringWithUTF8String:email];
	NSLog(@"Enter Phone Number:\n");
	scanf("%d",&phone);

	[third setName:name3];	
	[third setEmail:email3];
	[third setPhone:phone];
	
	[name1 release];
	[email1 release];
	[name2 release];
	[email2 release];
	[name3 release];
	[email3 release];
	
	[array addObject:first];
	[array addObject:second];
	[array addObject:third];
	[entries setCards:array];
	
	[entries printDetails];
	[entries count];
	
	[third release];
	[second release];
	[first release];
	[entries release];
	
	[myPool drain];
	
	return 0;
}

