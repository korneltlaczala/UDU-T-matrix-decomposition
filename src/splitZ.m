function [z1, z2] = splitZ(z)

    n = length(z);
    p = n/2;

    z1 = z(1:p);
    z2 = z(p+1:n);
end