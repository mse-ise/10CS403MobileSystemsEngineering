#import <Foundation/Foundation.h>
#import "Dictionary.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSArray *value = [NSArray arrayWithObjects:[NSNumber numberWithInt:10], [NSNumber numberWithInt:40], [NSNumber numberWithInt:50], [NSNumber numberWithInt:20], [NSNumber numberWithInt:30], [NSNumber numberWithInt:10], [NSNumber numberWithInt:10], [NSNumber numberWithInt:20], [NSNumber numberWithInt:20], [NSNumber numberWithInt:10], nil];

    NSArray *key = [NSArray arrayWithObjects: @"centimeter", @"pound", @"ounce", @"kilogram", @"yard", @"millimeter", @"kilometer", @"milligram", @"gram", @"meter", nil];
    
    NSDictionary *dict=[NSDictionary dictionaryWithObjects:value forKeys:key];
    Dictionary *dictn=[[Dictionary alloc]init];

    [dictn setDictionary:dict];
    [dictn print];
    [dictn release];
    [pool release];
    return 0;
}
