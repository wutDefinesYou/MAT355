function [y q] = Horner(a,r)

n = numel(a);
q = zeros(1,n);
q(1) = a(1);

for 2:n
  q(i) = a(i) + r * q(i-1);
endfor

y = q(n);
endfunction
