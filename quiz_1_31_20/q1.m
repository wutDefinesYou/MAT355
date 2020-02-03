function output = q1()
  
f = @(x) sin(x);
fp = @(x) cos(x);

x = 0;
h = 0.1;

y = (-3*f(x)+4*f(x+h)-f(x+2*h)) / (2*h);
error = abs(fp(x) - y);
printf("apprx = %6.4e |error| = %6.4e\n", y, error)
output = "done";
endfunction
