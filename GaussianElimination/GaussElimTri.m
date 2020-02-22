function x = GaussElimTri(a, d, c, b)
n = length(d);
x = zeros(n, 1);

for i = 2:n
  xmult = a(i-1)/d(i-1);
  d(i) = d(i) - xmult*c(i-1);
  b(i) = b(i) - xmult*b(i-1);
endfor

x(n) = b(n)/d(n);

for i = n - 1:-1:1
  x(i) = (b(i) - c(i)*x(i+1))/d(i);
endfor
endfunction
