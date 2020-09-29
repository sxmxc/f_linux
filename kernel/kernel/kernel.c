#include <stdio.h>

#include <kernel/tty.h>

void kernel_main(void) {
	terminal_initialize();
	printf("Fuck Linux V.5\nActually Linux is pretty cool\nGo them\nUse this OS at your own risk");
}
