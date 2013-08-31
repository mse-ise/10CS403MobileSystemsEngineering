#import<Foundation/Foundation.h>
#import "Employee.h"
#include<stdio.h>

int main(int argc, const char* argv[])
{
	int num;
	Employee *myEmp = [[Employee alloc] init];

	NSLog(@"\nEnter ID:");
	scanf("%d",&num);

	[myEmp setEmpId:num];
	NSLog(@"Employee ID:%d",[myEmp empId]);
	[myEmp setName:@"Arjun"];

	[myEmp setDepartment:@"Information Science"];

	NSLog(@"Employee details:\nName: %@\nDepartment: %@",[myEmp name],[myEmp department]); 
	[myEmp release];
	
	return 0;
}
