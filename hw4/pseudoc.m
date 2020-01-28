function y = pseudoc()
  
x = 1.0;
while x > 0.0
  y = x;
  x = x / 2.0;
  printf("|x|= %6.4e\n", x)
endwhile
endfunction
