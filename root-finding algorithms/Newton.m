function Newton(f, df, x, nmax, tol1, tol2)
  
fx = f(x);

for n = 1:nmax
  fp = df(x);
  if abs(fp) < tol2
    printf("small derivative\n")
    return
  endif
  
  d = fx / fp;
  x = x - d;
  fx = f(x);
  printf("iter = %2d,   x = %9.8e,    fx = %+9.8e\n", n, x, fx)
  
  if abs(d) < tol1
    printf("convergence\n")
    return
  endif
endfor
endfunction
