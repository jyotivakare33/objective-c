#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	int number, number1, result, option;
	printf("enter the option\n 1.addition\n2.subtraction\n3.multiplication\n4.divison\n5.modulus\n");
	scanf("%d", &option);
	printf("enter the numbers\n");
	scanf("%d", &number);
	scanf("%d", &number1);
	switch(option) {
		case 1: printf("%d\n", number + number1);
				break;
		case 2: printf("%d\n", number - number1);
				break;
		case 3: printf("%d\n", number * number1);
				break;
		case 4: printf("%d\n", number / number1);
				break;
		case 5: result = number % number1;
				printf("%d\n", result);
				break;
	}
	[pool drain];
    return 0;
}
