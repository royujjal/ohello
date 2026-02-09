#include <stdio.h>
#include <unistd.h>

int main() {
	int c = 0;

	while (1) {
		printf("Hello from C app in OpenShift VM!\n");
		printf("OpenShift ohello count=%d\n", c);
		sleep(1);
		c++;
	}
    return 0;
}
