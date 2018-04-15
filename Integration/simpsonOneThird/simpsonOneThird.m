#Code to integrate the function (F) using Simpson's one third rule
#Author: Biprateep Dey
clc;
clear;
format long;

#integration parameter
a=0; #start integrating from this point
b=1; #integrate till this point
n=5000; #number of steps
###########################################
h=(b-a)/n;
int=0;

for i=a:2*h:(b-2*h)
  int+=(h/3)*(F(i)+4*F(i+h)+F(i+2*h));
endfor

printf("The integrated value of the function is: %f\n",int)
