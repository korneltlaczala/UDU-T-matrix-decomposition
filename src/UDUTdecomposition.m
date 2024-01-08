function [U, D] = UDUTdecomposition(A)
    n = length(A);
    p = n/2;

    A11 = A(1:p, 1:p);
    A12 = A(1:p, p+1:n);
    A22 = A(p+1:n, p+1:n);

    I = eye(p);
    N = zeros(p,p);
    D22 = A22;
    U12 = linsolveLU(D22, A12')';
    D11 = A11 - U12*D22*U12';

    U = [I, U12; N, I];
    D = [D11, N; N, D22];