#Code to integrate the function (F) using composite trapezoidal rule
#Author: Biprateep dey
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

for i=a:h:(b-h)
  int+=(h/2)*(F(i)+F(i+h));
endfor

printf("The integrated value of the function is: %f\n",int)
