function output = Comparison()
  
f = @(x) sin(x);
fp = @(x) cos(x);
fpp = @(x) -sin(x);

x = 0.25;
e1 = 0;
e2 = 0;
te1 = 0;
te2 = 0;
h = 1;
n = 12;

for i = 0:n
  h = 4^(-i);
  y1 = imag(f(x + I*h)) / h;
  y2 = imag(f(x + I^(1/2)*h) + f(x + I^(5/2)*h)) / h^2;
  e1 = abs(fp(x) - y1);
  e2 = abs(fpp(x) - y2);
  te1 = h^2 / 6;
  te2 = h^4 / 360;
  printf("n = %2d  fp = %10.8f  e1 = %2.1e   h^2/6 = %2.1e  fpp = %10.8f  e2 = %2.1e  h^4/30 = %2.1e\n", i, y1, e1, te1, y2, e2, te2)
endfor

output = "done";
endfunction
