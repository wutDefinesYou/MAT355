function x = GaussElimScaled(A, b)
n = length(b);
x = zeros(n, 1);
  
# Loop to initialize the index array L and the scale vector s
for i = 1:n
    L(i) = i;
    smax = 0;
    for j = 1:n
        smax = max(smax, abs(A(i,j)));
    endfor
    s(i) = smax;
endfor

# Forward elimination
for k = 1:n-1
    # Finding the pivot
    rmax = 0;
    for i = k:n
        r = abs(A(L(i),k)/s(L(i)));
        if (r > rmax)
            rmax = r;
            j = i;
        endif
    endfor
    # swap L(j) and L(k)
    temp = L(j);
    L(j) = L(k);
    L(k) = temp;
    temp = 0;
    # Eliminating the entries in the k-th column
    for i = (k+1):n
        xmult = A(L(i),k) / A(L(k),k);
        A(L(i),k) = xmult;
        # Modifying all entries in the L(i)-th row
        for j = (k+1):n
            A(L(i),j) = A(L(i),j) - (xmult)*A(L(k),j);
        endfor
        # Modifying b in the L(i)-th row
        b(L(i)) = b(L(i)) - (xmult)*b(L(k));
    endfor
endfor

# Backward substitution
x(n) = b(L(n))/A(L(n),n);
for i = (n-1):-1:1
    sum = b(L(i));
    for j = (i+1):n
        sum = sum - A(L(i),j)*x(j);
    endfor
    x(i) = sum/A(L(i),i);
endfor
endfunction
