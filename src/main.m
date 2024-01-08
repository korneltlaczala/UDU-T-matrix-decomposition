clc

basicVector = [7 -1 21.37 13]';

matrix = getExample(1);
b = matrix * basicVector;

display(linsolveUDUT(matrix, b))
display(linsolve(matrix, b))
