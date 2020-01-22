function [imin emin] = First(x)

%% Compute f'(x) at the point x = 0.5, with f(x) = sin(x)
%% and the absolute error between the definition of the derivative and differentiation rules
%% Input:
%%    x: will be 0.5 in this case
%% Outputs:
%%    imin: the smallest i needed to observe zero change in absolute error
%%    emin: the smallest absolute error the computer can observe
%% Usage:
%%    [imin emin] = First(x)

% initialization of parameters
x = 0.5;
y = 0;
h = 1;
n = 30;
imin = 0;
emin = 1;
error = 0;

for i = 1:n
  h = 0.25*h;
  y = (sin(x+h)-sin(x))/h;
  error = abs(cos(x)-y);
  printf("i = %2d:  h = %16.14f   y = %16.14f |error| = %16.14f |error| = %6.4e\n", i, h, y, error, error)
  if error < emin
    emin = error;
    imin = i;
  endif
  endfor

endfunction
