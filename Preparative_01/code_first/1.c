#include <stdio.h>

int main(){
    float a;
    float b;
    int i,n;
    scanf("%f %f %d",&a,&b,&n);
    while(i<n){
        i++;
        a+=b;
    }
     printf("Result_a is %f\n",a);
}
