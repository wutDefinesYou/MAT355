function Bisection(f, a, b, nmax, tol)

%% Bisection methond
%% Find the interval where the root of the function sits in within given error tolerence
%% Inputs:
%%    f: function to find the root of
%%    a: start point of the interval
%%    b: end point of the interval
%%    nmax: maximum number of iterations
%%    tol:  tolerance allowed for error

fa = f(a);
fb = f(b);

if sign(fa) == sign(fb)
  printf("function has same signs at %16.14f and %16.14f.\n", a, b)
  return
endif

error = b - a;

for n = 0:nmax
  error = error / 2;
  c = a + error;
  fc = f(c);
  printf("n = %2d, c = %15.14e,  fc = %+7.6e,  error = %5.4e\n", n, c, fc, error)
  
  if abs(error) < tol || abs(fc) < 100*eps
    printf("Convergence\n")
    return
   endif
   
   if sign(fa) != sign (fc)
     b = c;
     fb = fc;
   else
     a = c;
     fa = fc;
   endif
endfor

endfunction
