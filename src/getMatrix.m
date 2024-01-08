function [matrix] = getMatrix(p, variance)

    n = 2*p;
    B = randn(n, n);
    A = (B + B') / 2;

    A = A + n * eye(n);
    while min(eig(A)) <= 0
        A = A + 0.1 * eye(n);
    end

    matrix = variance.*A;
end
