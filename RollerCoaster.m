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
	    if([first length] == 1) { 
			printf("blank line\n");
		} else {
		    bool flag = true;
		    for(index = 0; index < [first length]; index++) {  
				if (flag) {
					c = [[first uppercaseString] characterAtIndex:index];
					printf("%c",c);
				}
				else if (!flag) {
					c = [[first lowercaseString] characterAtIndex:index];
					printf("%c",c);
				}
				else
					printf("%c",[first characterAtIndex:index]);
				flag = !flag;
		    }
		    printf("\n");
		}
    } 
   [pool drain];
   return 0;
}
