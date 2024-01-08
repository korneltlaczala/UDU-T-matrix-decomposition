function [x] = linsolveForUpper(U, B)
    [m, n] = size(B);
    x = zeros(m, n);

    for i = m:-1:1
        x(i, :) = (B(i, :) - U(i, i+1:end) * x(i+1:end, :)) / U(i,i);
    end
end