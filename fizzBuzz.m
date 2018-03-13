#import <Foundation/Foundation.h>
int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int fizz, buzz, limit, index;
    printf("enter the values for fizz, buzz and limit in sequence\n");
    scanf("%d", &fizz);
    scanf("%d", &buzz);
    scanf("%d", &limit);
    for (index = 1; index <= limit; index++) {
		if (index % fizz == 0)
			printf("F ");
		if (index % buzz == 0)
			printf("B ");
		if (index % fizz == 0 && index % buzz == 0)
			printf("FB ");
		else
			printf("%d  ", index);
	}
	[pool drain];
    return 0;
}
