#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];   
    NSURL *url =[NSURL fileURLWithPath:@"right_most_char.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];
	NSString *wordsToCompare;
	int index;
	NSString *letter;
	char  comparsion;
	for (NSString *first in fileInput)
	{			
		if([first length] == 1) { 
			printf("blank line\n");
		} else {
			NSArray *words = [first componentsSeparatedByString:@","];
			wordsToCompare = [words objectAtIndex:0];
			letter = [words objectAtIndex:1];
			//NSLog(@"%c",[wordsToCompare characterAtIndex:1]);
			for(index = [wordsToCompare length] - 1; index >= 0; index--) {
				comparsion = [wordsToCompare characterAtIndex:index];
				if([letter characterAtIndex:0] == comparsion) {
					printf("%d\n",index);
					break;
				}
			}		
		}
	}
    [pool drain];
    return 0;
}

