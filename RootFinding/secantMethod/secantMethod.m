#Code to calculate root using secant method
#Author: Biprateep Dey
clc;
clear all;
format long;


x1 = input("First guess: ");
x2 = input("Second guess: ");
n=input("Number of Iterations: ");

xn=x1;
xn1=x2;

for i=1:1:n
  xn2=xn1 - ( F(xn1)* ((xn1-xn)/(F(xn1)-F(xn))) );
  
  if isnan(xn2) || isinf(xn2)
    printf("Stopped after %d iterations as the root has been achieved\n",i)
    break;
  endif
  
  xn=xn1;
  xn1=xn2;
  plot(i,xn1);
  hold on;
endfor

legend("Secant Method");
xlabel("Number of Iterations");
ylabel("Value of Root");
hold on;
printf("After %f iterations the root is %f\n",i,xn1)