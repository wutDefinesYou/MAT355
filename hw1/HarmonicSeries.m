function total = HarmonicSeries(n)

%% Compute the sum of the first n terms of the Harmonic Series
%%
%% Input:
%%    n : the constant to declare first n terms
%%
%% Output:
%%    total : the sum of the first million terms of the harmonic series
%%
%% Usage:
%%    format long (to display in the long format)
%%    total = HarmonicSeries('number of terms')

% compute Harmonic Series

total = 0;

for i = 1:n   % repeat until hitting n
  total += 1/i; % adding up all together
end

endfunction
