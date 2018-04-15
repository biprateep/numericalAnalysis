#Code to find the root of a function (F) using bisection method
#Author: Biprateep Dey

clc;
clear;
format long;

searchRange=input("Range to search the root (format: [a,b]) : ");
iteration=input("Number of iterations to run: ");
a=searchRange(1);
b=searchRange(2);

for i=1:1:iteration
  c=(a+b)/2;
  plot(i,c);
  hold on;
  if sign(F(a))==sign(F(c))
    a=c;
  else
    b=c;
  endif
endfor

legend("Bisection Method");
xlabel("Number of Iterations");
ylabel("Value of Root");
hold on;
printf("After %f iterations the root is %f\n",iteration,c)
