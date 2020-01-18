function total = HarmonicSeriesBackward(n)
  
%% Compute the sum of the first n terms of the Harmonic Series backwards
%%
%% Input:
%%    n : the constant to declare first n terms
%%
%% Output:
%%    total : the sum of the first million terms of the harmonic series
%%
%% Usage:
%%    format long (to display in the long format)
%%    total = HarmonicSeriesBackward('number of terms')  

total = 0;

for i = n:-1:1  % decrement by 1 n through 1
  total += 1/i; % adding up together
endfor

endfunction