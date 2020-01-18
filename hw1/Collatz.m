function v = Collatz(a,n)
  
%% Compute the first n terms of the Collatz sequence  
%%
%% Inputs:
%%    a: the value of the first term
%%    n: the number of terms to display
%% Output:
%%    v: a vector displaying the first n terms of the sequence
%% Usage:
%%    v = Collatz(a,n)

% Initialize a vector with 0s
v = zeros(1,n);

v(1) = a;
for i = 1:n-1   % repeat from 1 to n-1
  if mod(v(i),2) == 0   % if even
    v(i+1) = v(i) / 2;
  elseif mod(v(i),2) == 1   % if odd
    v(i+1) = 3*v(i) + 1;
  else
    disp('Error: negative number')
  endif
endfor

endfunction
