function [D11, D22] = splitD(D)
    
    n = length(D);
    p = n/2;

    D11 = D(1:p, 1:p);
    D22 = D(p+1:n, p+1:n);
end