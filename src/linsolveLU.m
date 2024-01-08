function [x] = linsolveLU(A, B)

    [L, U] = LUdecomposition(A);

    Y = linsolveForLower(L, B);
    x = linsolveForUpper(U, Y);
end