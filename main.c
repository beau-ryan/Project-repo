// #!/bin/bash
/*IDeas: and prac testing */
#include <stdio.h>

/*define some attributes*/
#define RF_AM 50 //khz
#define RF_FM 100 //mhz
#define RF_WIFI 2.4 // ghz
#define RF_ALL_SIG 5 // 0khz -> 5ghz
#define CH_0 0
#define CH_1 1
#define CH_2 2
#define CH_3 3

int main() {
	int i;
	int sig;

	// test type casting
	int a = 10;
	double b = 9.34, sum;
	//double a = 10.5, b = 5.5;
	sum = a + b ;
	//int sum  = (int)a + (int)b;

	printf("sum of a+b is: %lf\n\n", sum);
	//printf("sum of a+b is %d\n\n", sum);
	
	// changing (i) to = 1 or 0 for 1 odds for 0 evens returned
	for ( i = 1; i <= RF_ALL_SIG; i++) {
		printf("%d:%d\n\n", RF_ALL_SIG, i);
		//i++;
	}

	printf("not yet implemented\n %d", sig);

	return 0;
}
