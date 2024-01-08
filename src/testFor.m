function testFor(matrix, vector, p, variance)
    fprintf("Testing for:\n")
    fprintf("p = ")
    disp(p)
    fprintf("variance = ")
    disp(variance)

    tic
    for i = 1:1200
        myResult = linsolveUDUT(matrix, vector);
    end
    myTime = toc;

    tic
    for i = 1:1200
        matlabResult = linsolve(matrix, vector);
    end
    matlabTime = toc;

    
    if p <= 5
        display(matrix)
        display(vector)
    end

    errors = table(myResult, matlabResult, 'VariableNames', {'myResult', 'matlabResult'});
    errors.AbsoluteError = abs(errors.myResult - errors.matlabResult);
    errors.RelativeError = abs(errors.myResult - errors.matlabResult) ./ abs(errors.matlabResult);


    fprintf("Result comparison for first 5 indices:\n")
    disp(errors(1:5,:))

    fprintf("My time: ")
    disp(myTime)
    fprintf("BuiltIn function time: ")
    disp(matlabTime)
end