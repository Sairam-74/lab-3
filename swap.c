#include<stdio.h>
int main(){
int a=10,b=20,t;
printf("Before swapping:a=%d,b=%d",a,b);
t=a;
a=b;
b=t;
printf("After swapping:a=%d,b=%d",a,b);
return 0;
}
