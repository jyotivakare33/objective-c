#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSURL *url =[NSURL fileURLWithPath:@"sum_of_digits.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];
	int sum=0, digit, temp;					
	for (NSString *first in fileInput)
	{			
		if([first length] == 1) { 
			printf("blank line\n");
		} else {
			NSArray *line = [first componentsSeparatedByString:@" "];
		    temp = [[line objectAtIndex:0] intValue];  
		    while(temp > 0) {
				digit = temp % 10;
				sum += digit;
				temp = temp / 10;
			}
			NSLog(@"Sum of digits of  %i", sum);
			sum = 0;
		}
	}
    [pool drain];
    return 0;
}
