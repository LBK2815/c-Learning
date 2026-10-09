#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    printf("Hello, C! \n");
    printf("Compiler: GCC (MinGW-w64)\n");
    printf("Standard: C17\n");

    if (argc > 1) {
        printf("Arguments: ");
        for (int i = 1; i < argc; i++) {
            printf("[%s] ", argv[i]);
        }
        printf("\n");
    }

    return 0;
}
