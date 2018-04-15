#Code to demonstrate Newton-Raphson's method to find roots of equations
#Author: Biprateep Dey

clc;
clear all;
format long;

startVal=input("Trial value to start with: ");
iteration=input("Number of iterations to run: ");

root=startVal
for i=1:1:iteration
  
  hold on;
  plot(i,root,"+r");
  hold off;
  newroot=root-F(root)/dF(root);
  error=newroot-root;
  printf("After %f iterations the error is %f\n",i,error)
  root=newroot;
endfor

xlabel("Number of iterations");
ylabel("Root");
legend("Newton Raphson Method");
hold on;
printf("After %f iterations the root is %f\n",iteration,root)