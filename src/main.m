clc

basicVector = [8 -1 21.37 13]';

matrix = getExample(1);
b = matrix * basicVector;

tic
for i = 1:100000
    myResult = linsolveUDUT(matrix, b);
end
myTime = toc;

tic
for i = 1:100000
    matlabResult = linsolve(matrix, b);
end
matlabTime = toc;

display(myResult')
display(matlabResult')

fprintf("My time: ")
disp(myTime)

fprintf("Matlab time: ")
disp(matlabTime)


