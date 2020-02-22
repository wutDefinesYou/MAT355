function Secant(f, a, b, nmax, tol)

fa = f(a);
fb = f(b);

##if abs(fa) > abs(fb)
##  a = a + b;
##  b = a - b;
##  a = a - b;
  
##  fa = fa + fb;
##  fb = fa - fb;
##  fa = fa - fb;
#endif
printf("iter = %2d,   a = %+16.15e,   fa = %+16.15e\n", 0, a, fa)
printf("iter = %2d,   b = %+16.15e,   fb = %+16.15e\n", 1, b, fb)

for n = 2:nmax
  if abs(fa) > abs(fb)
    if abs(fa - fb) <= tol*fa
      printf("halt to preserve siginificant digits\n")
      return
    else
    a = a + b;
    b = a - b;
    a = a - b;
    
    fa = fa + fb;
    fb = fa - fb;
    fa = fa - fb;
    end
  endif
  d = (b - a) / (fb - fa);
  b = a;
  fb = fa;
  d = d*fa;
  if abs(d) < tol
    printf("convergence\n")
    return
  endif
  a = a - d;
  fa = f(a);
  printf("iter = %2d,   a = %+16.15e,   fa = %+16.15e\n", n, a, fa)
endfor
endfunction
