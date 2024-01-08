function [x] = linsolveLU(A, b)

    [L, U] = lu(A);

    y = linsolveForLower(L, b);
    x = linsolveForUpper(U, y);
end