function y = pseudob()
  
x = 1.0;
while (x + 1.0) > 1.0
  x /= 2.0;
  printf("|x|= %6.4e\n", x)
endwhile
y = 2.0 * x;
endfunction
