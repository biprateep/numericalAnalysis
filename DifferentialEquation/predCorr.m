#predictor corrector method using euler correction
clc;
clear;
format long;

#initialCondition
x0=0; #start integrating from this point
y0=1; #Initial conditions for the starting point
xStop=0.25; #end at this point
n=500; #number of steps
n_correct=2; #number of correction steps

###########################################
h=(xStop-x0)/n;
y_i0=y0;
y_iN=y0;

y=[];

for x_i=x0:h:xStop
  y_i0=y_i0+(h)*F(x_i,y_i0); #first prediction using euler method
  for i=1:1:n_correct-1
    y_ic=y_iN+(h/2)*[F(x_i,y_iN)+F(x_i+h,y_i0)]; #correction in the trapezoidal rule
    y_i0=y_ic;
  endfor
  y_iN=y_iN+(h/2)*[F(x_i,y_iN)+F(x_i+h,y_i0)];
  y(end+1)=y_iN;
endfor

#Plot the results
x=x0:h:xStop;
plot(x,y,'b+')
hold on;
plot(x,1./(1.+x),'r*')
legend("Numerical Solution","Analytical Solution")
