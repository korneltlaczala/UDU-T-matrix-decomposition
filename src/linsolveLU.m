function [x] = linsolveLU(A, b)

    [L, U] = LUdecomposition(A);

    y = linsolveForLower(L, b);
    x = linsolveForUpper(U, y);
end