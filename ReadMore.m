#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSURL *url =[NSURL fileURLWithPath:@"read_more.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];						
	for (NSMutableString *first in fileInput)
	{			
		if([first length] == 1) { 
			printf("blank line\n");
		} else {
			if([first length] <= 55) {
				NSLog(@"%@",first);
			}
			else {
				NSString *result = [[[first substringToIndex : 40] stringByTrimmingCharactersInSet :
							[NSCharacterSet whitespaceCharacterSet]] stringByAppendingString :@"...<ReadMore>"];
				NSLog(@"%@",result);
			}
		}
	}
	[pool drain];
    return 0;
}		
		
