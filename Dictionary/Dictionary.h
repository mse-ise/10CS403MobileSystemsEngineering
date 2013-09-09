#import <Foundation/Foundation.h>

@interface Dictionary:NSObject
{
    NSDictionary *dictionary;
}

@property (retain,nonatomic) NSDictionary *dictionary;

-(void) print;

@end
