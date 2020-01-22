function [y q] = Horner(a,r)

%% Horner's algorithm
%% Nested multiplication form to compute polynomials
%%
%% Inputs:
%%    a: array of coefficients of the polynomial, in descending order of exponent
%%    r: value at which the polynomial is being evaluated
%%
%% Outputs:
%%    y: value of the polynomial
%%    q: array of coefficients of the deflated polynomial
%% Usage:
%%    [y q] = Horner(a,r);
%%    The first output would be y, and the next would be q

n = numel(a);   % the number of coefficients
q = zeros(1,n-1);   % initialize vector q
q(1) = a(1);  % let the first term in q equals the first term in a

for i = 2:n-1
  q(i) = a(i) + r * q(i-1);   % compute each term of q
endfor

y = a(n) + r * q(n-1);  % evaluate the last term in q & the value of polynomial
endfunction
