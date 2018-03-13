#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];   
    NSURL *url =[NSURL fileURLWithPath:@"step_wise_words.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];
	int index, innerIndex, outerIndex;	
	NSString *inputs;
	NSString *comparsion;
	char letter;							
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
			for (outerIndex = 0; outerIndex < [comparsion length]; outerIndex++) {
				letter = [comparsion characterAtIndex:outerIndex];
				printf("%c",letter);
				for (innerIndex = 0; innerIndex <= outerIndex; innerIndex++) { 
					if (outerIndex == [comparsion length] - 1)
						break;
					else 				
						printf("*");
				}			
			}
			printf("\n");
			comparsion = 0;
		}
	}					
    [pool drain];
    return 0;
}
