function [x] = linsolveForLower(L, B)
    [m, n] = size(B);
    x = zeros(m, n);

    for i = 1:m
        x(i, :) = (B(i, :) - L(i, 1:i-1) * x(1:i-1, :)) / L(i, i);
    end
end