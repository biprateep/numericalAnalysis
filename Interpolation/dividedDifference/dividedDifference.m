#Code to create the divided difference matrix
#author: Biprateep Dey
clc;
clear all;
format long g;

#input values for the function sqrt(x)
x=[2.0,2.1,2.2,2.3,2.4];
y=[1.414214,1.449138,1.483240,1.516575,1.549193];


dd=zeros(length(x));
dd(:,1)=y;

for i=2:1:length(x)
  for k=length(x):-1:i
  dd(k,i)=(dd(k,i-1)-dd(k-1,i-1))/(x(k)-x(k-i+1));
  endfor
endfor

output_precision(4)
disp(dd)