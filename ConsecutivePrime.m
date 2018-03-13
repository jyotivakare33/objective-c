#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];   
    NSURL *url =[NSURL fileURLWithPath:@"consecutive_prime.txt"];
	NSString *fileContent = [NSString stringWithContentsOfURL :url
	encoding : NSASCIIStringEncoding error: NULL];
	NSArray *fileInput = [fileContent componentsSeparatedByString:@"\n"];
	int index = 0, innerIndex, outerIndex, lowerLimit, upperLimit;	
	int flag = 0, sum, outerIndex1, innerIndex1;
	int result[40];	
	bool count = true;						
	for (NSString *first in fileInput)
	{			
		if([first length] == 1) { 
			printf("blank line\n");
		} else {
			NSArray *words = [first componentsSeparatedByString:@" "];
			lowerLimit = [[words objectAtIndex:0] intValue];
			upperLimit = [[words objectAtIndex:1] intValue];
			for (outerIndex = lowerLimit; outerIndex < upperLimit; outerIndex++) {
				for (innerIndex = 2; innerIndex < outerIndex; innerIndex++) {
					if (outerIndex % innerIndex == 0) {
						flag = 0;
						break;
					} else
						flag = 1;
				}
				if (flag == 1) {
					result[index] = outerIndex;
					index++;
				}
			}
			for (outerIndex1 = 0; outerIndex1 < 10; outerIndex1++) {
				if (result[outerIndex1] != 0) {
					sum = result[outerIndex1] + result[outerIndex1 + 1] + 1;
					for (innerIndex1 = 0; innerIndex1 < 10; innerIndex1++) {
						if (sum == result[innerIndex1]) {
							printf("%d\n",sum);
							count = false;
						}
					}
				}
			}
			if (count)
				printf("not present");
			sum = 0;
			printf(" ");
		}
	}	
	[pool drain];
    return 0;
}

