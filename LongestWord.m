#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];   
    NSURL *url =[NSURL fileURLWithPath:@"longest_words.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];
	int index;	
	NSString *inputs;
	NSString *comparsion;							
	for (NSString *first in fileInput)
	{			
		if([first length] == 1) { 
			printf("blank line\n");
		} else {
			NSArray *words = [first componentsSeparatedByString:@" "];	
			for (index = 0; index < [words count]; index++) {
				inputs = [words objectAtIndex:index];
				if([inputs length] > [comparsion length] ) {
					comparsion = inputs;		
				}
			}  	
			NSLog(@"%@",comparsion);
			comparsion = 0;	
		}	
	}			
    [pool drain];
    return 0;
}
