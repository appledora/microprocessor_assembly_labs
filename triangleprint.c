#include <stdio.h>

int main(){


for(int level = 1;level<=5;level++){
    for(int space = level; space <= 5;space++){
        printf(" ");
    }

    for (int star = 1; star <= 2*level - 1 ;star++){
        printf("*");
    }

    printf("\n");
}

}

