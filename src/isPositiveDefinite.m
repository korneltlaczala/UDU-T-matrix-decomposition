function result = isPositiveDefinite(A)

    if ~ishermitian(A)
        error('Macierz A nie jest hermitowska.');
    end

    eigenvalues = eig(A);
    result = all(eigenvalues > 0);
end