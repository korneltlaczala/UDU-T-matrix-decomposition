function [x] = linsolveUDUT(A, b)

    [U, D] = UDUTdecomposition(A);
    z = linsolveForUpper(U, b);

    [D11, D22] = splitD(D);
    [z1, z2] = splitZ(z);

    y1 = linsolveLU(D11, z1);
    y2 = linsolveLU(D22, z2);
    y = [y1; y2];

    x = linsolveForLower(U', y);
end