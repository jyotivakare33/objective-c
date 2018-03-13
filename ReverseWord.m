#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];   
    NSURL *url =[NSURL fileURLWithPath:@"reverse_words.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];
	int index1;	
	NSString *inputs;						
	for (NSString *first in fileInput)
	{			
		if([first length] == 1) { 
			printf("blank line\n");
		} else {
			NSArray *line = [first componentsSeparatedByString:@" "];
			for (index1 = [line count] - 1; index1 >= 0; index1--) {
				inputs = [line objectAtIndex:index1];
				NSLog(@"%@", inputs);
			}
		}
	}		
    [pool drain];
    return 0;
}
