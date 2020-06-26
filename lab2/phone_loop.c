#include <stdio.h>
#include <stdlib.h>


int main() {

    int point;
    char phone[11];
    scanf("%s", phone);
    while(1<2){
    scanf("%d", &point);
    if (point == -1){printf("%s\n",phone);}
    if (point < -1 || point > 9){printf("ERROR\n");return 1;}
    else {printf("%c\n",phone[point]);}
  }
  return 0;
}
