clc

basicVector = [8 -1 21.37 13]';

p = 100;
variance = 1;
matrix = getMatrix(p, variance);
vector = randn(2*p, 1).*100;
testFor(matrix, vector, p, variance)