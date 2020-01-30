function output = Comparison()
 
f = @(x) sin(x);
fp = @(x) cos(x);

x = 0.25;
e1 = 0;
e2 = 0;
te1 = 0;
te2 = 0;
h = 1;
n = 12;

for i = 0:n
  h = 4^(-i);
  y1 = (f(x+h)-f(x-h)) / (2 * h);
  y2 = (f(x+h)-f(x-h)) / (2 * h) - (f(x+2*h) - 2 * (f(x+h) - f(x-h)) - f(x-2*h)) / (12 * h);
  e1 = abs(fp(x) - y1);
  e2 = abs(fp(x) - y2);
  te1 = h^2 / 6;
  te2 = h^4 / 30;
  printf("n = %2d   f' = %10.8f   e1 = %2.1e  h^2/6 = %2.1e   f' = %10.8f e2 = %2.1e   h^4/30 = %2.1e\n", i, y1, e1, te1, y2, e2, te2)
  
endfor

output = "done";
endfunction
