#Code to do polynomial interpolation using lagrange polynomials
#author: Biprateep Dey
clc;
clear all;
format long;

#input values for poly x^3+1
x_in = [-2, -1, 0,1,2];
y_in = [-7, 0, 1,2,9];
#Calculate the interpolated polynomial between these values in the given stepsize
plot_min=-3;
plot_max=3;
step=0.2;

#Function to calculate the lagrange polynomial coefficients
function retval=L(i, x, x_in)
  l = 1;
  for j = 1:length(x_in)
    if ( i != j)
      l = l * (x - x_in(j))/(x_in(i) - x_in(j));
    endif
  endfor
  retval = l;
endfunction

#Function to calculate the interpolation polynomial
function retval = pol(x,x_in,y_in)
  p = 0;
  for i=1:length(y_in)
    p = p + ( y_in(i) * L(i, x,x_in) );
  endfor
  retval = p;
endfunction

x=[];
y=[];
#display output and plot results
disp("The interpolated values are: ")
for x_test=plot_min:step:plot_max
  disp([x_test, pol(x_test,x_in,y_in)]);
  x(end+1)=x_test;
  y(end+1)=pol(x_test,x_in,y_in);
endfor

plot(x,y)
hold on;
plot(x_in,y_in,'r*')
legend("Interpolated Polynomial","Input Data");
