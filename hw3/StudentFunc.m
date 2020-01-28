function [i x] = StudentFunc(n)
  
x = 1;

for i=1:n
  x = (100 * x) / i;
  printf("|i|= %3d, |x|= %16.14f, |x|= %6.4e\n", i, x, x)
endfor

endfunction
