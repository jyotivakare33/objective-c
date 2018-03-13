#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSURL *url =[NSURL fileURLWithPath:@"email_validation.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSString *pattern = @"^.[a-zA-Z][a-zA-Z0-9]+@[a-zA-Z]+[.]com";
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];							
	for (NSString *first in fileInput)
	{					
		if([first length] == 1) { 
			printf("blank line\n");
		} else {
			if([predicate evaluateWithObject:first]) {
				NSLog(@"yes");
			}
			else
			{
				NSLog(@"no");
			}
		}
	}
    [pool drain];
    return 0;
}
