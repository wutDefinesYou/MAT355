function [imax emax] = First(x)
  
%% Compute f?(x) at the point x = 0.5, with f(x) = sin(x)
%% and the absolute error between definition of the derivative and differentiation rules
%% Input:
%%    x: will be 0.5 in this case
%% Outputs:
%%    imax: the biggest i needed to observe zero change in absolute error
%%    emax: the biggest absolute error the computer can observe
%% Usage:
%%    [imax emax] = First(x)

% initialization of parameters
x = 0.5;
y = 0;
h = 1;
n = 30;
imax = 0;
emax = 0;
error = 0;

for i = 1:n
  h = 0.25*h;
  y = (sin(x+h)-sin(x))/h;
  error = abs(cos(x)-y);
  printf("i = %2d:  h = %16.14f   y = %16.14f |error| = %16.14f |error| = %6.4e\n", i, h, y, error, error)
  if error > emax
    emax = error;
    imax = i;
  endif
  endfor
  
endfunction
