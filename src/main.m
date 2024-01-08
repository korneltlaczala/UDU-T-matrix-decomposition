clc

basicVector = [8 -1 21.37 13]';

matrix = getExample(1);
b = matrix * basicVector;

myResult = linsolveUDUT(matrix, b);
matlabResult = linsolve(matrix, b);

display(myResult')
display(matlabResult')