#Code to integrate using Newton Cotes formula
#Author: Biprateep dey
clc;
clear all;
format long;

#integration parameter
a=0; #start integrating from this point
b=1; #integrate till this point
n=10;
###########################################

h=(b-a)/n;

function retval=L(i,a,b,n,h)
  p = [1];
  for j = 1:n+1
    if ( i != j)
      xi = a + i * h;
      xj = a + j * h;
      p = conv(p, [1 -1 * xj] / (xi - xj) );
    endif
  endfor
  retval = p;
endfunction

function retval = W(i,a,b,n,h)
  retval = polyval(polyint(L(i,a,b, n,h)), b) - polyval(polyint(L(i,a,b, n,h)), a);
endfunction

int = 0;
for i = 0:n
  xi = a + i * h;
  int = int + F(xi) * W(i,a,b,n,h);
endfor

printf("The integrated value of the function is: %f\n",int)