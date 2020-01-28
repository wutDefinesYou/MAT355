function [apprx error] = lnserie(n)

apprx = 0;
error = 0;
exact = log(2);

printf("ln2 = %16.14f\n", exact)

for i = 1 : n
  apprx += 2 * ((1/3)^(2*i-1)/(2*i-1));
  printf("|i|: %2d, |approximation|: %16.14f, |error|: %16.14f, |error|: %6.4e\n", i, apprx, exact - apprx, exact - apprx)
endfor

endfunction
