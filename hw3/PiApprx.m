function [f g] = PiApprx(n)
  
a = 0;
b = 1;
c = 1 / sqrt(2);
d = 0.25;
e = 1;

for k = 1:n
  a = b;
  b = (b + c) / 2;
  c = sqrt(c * a);
  d = d - e * (b - a)^2;
  e = 2 * e;
  f = b^2 / d;
  g = (b + c)^2 / (4 * d);
  
  printf("|k|= %2d, |f|= %38.36e, |f-pi|= %38.36e, |g|= %38.36e, |g-pi|= %38.36e\n", k, f, abs(f - pi), g, abs(g - pi))
endfor
endfunction
