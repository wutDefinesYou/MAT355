function count = CollatzNumberOfTerms(a)

%% Compute the number of terms needed until 1 is reached in the Collatz series
%%
%% Input:
%%    a: value of the first term
%% Output:
%%    count: the terms needed to reach 1
%% Usage:
%%    CollatzNumberOfTerms(a)

count = 0;

% initialize a vector to compute the Collatz series
v = zeros(1,1000000);

v(1) = a;
i = 1;

while (v(i) != 1)   % repeat until a 1 comes up
  if mod(v(i),2) == 0   % if even
    v(i+1) = v(i) / 2;
  elseif mod(v(i),2) == 1   % if odd
    v(i+1) = 3*v(i) + 1;
  endif
  i++;
endwhile

count = i - 1;
endfunction
