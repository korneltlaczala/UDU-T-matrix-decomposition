function isPositiveDefinite(A)

    if ~ishermitian(A)
        error('Macierz A nie jest hermitowska.');
    end

    eigenvalues = eig(A);
    all(eigenvalues > 0);
end