#import<Foundation/Foundation.h>
@interface Employee:NSObject
{
	NSString *name;
	NSString *department;
	int empId;
}

//Method Declarations
//Set Methods
-(void)setName:(NSString *)newName;
-(void)setDepartment:(NSString *)newDepartment;
-(void)setEmpId:(int)newEmpId;

//Get Methods
-(NSString *)name;
-(NSString *)department;
-(int)empId;
@end
