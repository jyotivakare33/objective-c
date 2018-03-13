#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];   
    NSURL *url =[NSURL fileURLWithPath:@"swap_case.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];
	int index;
	unichar c;				
	for (NSString *first in fileInput)
	{			
	    if([first lengtlengthlengthlengthh] == 1) { 
			printf("blank line\n");
		} else {
			for(index = 0; index < [first length]; index++) {  
				if ([first characterAtIndex:index] >= 'A' && [first characterAtIndex:index] <= 'Z') {
					c = [[first uppercaseString] characterAtIndex:index];
					printf("%c",c);
				}
				else if ([first characterAtIndex:index] >= 'a' && [first characterAtIndex:index] <= 'z') {
					c = [[first lowercaseString] characterAtIndex:index];
					printf("%c",c);
				}
				else
					printf("%c",[first characterAtIndex:index]);
		    }
		    printf("\n");  
		}
    } 
   [pool drain];
    return 0;
}
