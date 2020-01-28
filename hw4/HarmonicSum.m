function y = HarmonicSum(n)
  
y = single(0);
for k = 1:n
  y += 1/k;
endfor
endfunction
