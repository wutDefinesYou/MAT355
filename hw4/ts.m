function y = ts(k)
  
y = 0;
for i = 0:(k-1)
  y += 0.01^(k+2) / factorial(k + 2);
endfor
endfunction
