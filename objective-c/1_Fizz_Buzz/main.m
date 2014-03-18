/*Objective-C programs are executed via GNUStep on Linux*/

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    // read filename from the first argument
    NSString* filename = [NSString stringWithCString:argv[1] encoding:NSASCIIStringEncoding];
    NSString* content = [NSString stringWithContentsOfFile:filename];
    NSScanner* scanner = [NSScanner scannerWithString:content];

    while (![scanner isAtEnd]) {
        NSString* line;
        [scanner scanUpToString:@"\n" intoString:&line];

        NSArray *parts = [line componentsSeparatedByString:@" "];
        int f = [[parts objectAtIndex:0] intValue];
        int b = [[parts objectAtIndex:1] intValue];
        int x = [[parts objectAtIndex:2] intValue];

        for ( int i = 1; i <= x; i++ ) {
            if ( i % f == 0 && i % b == 0 ) {
                printf("%s", [@"FB" cStringUsingEncoding:NSASCIIStringEncoding]);
            }
            else if ( i % f == 0 ) {
                printf("%s", [@"F" cStringUsingEncoding:NSASCIIStringEncoding]);
            }
            else if ( i % b == 0 ) {
                printf("%s", [@"B" cStringUsingEncoding:NSASCIIStringEncoding]);
            }
            else {
                printf("%i", i);
            }
            if ( i < x ) {
                printf(" ");
            }
        }
        printf("\n");
    }

    [pool release];
    return 0;
}
