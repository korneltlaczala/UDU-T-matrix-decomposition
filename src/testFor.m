function testFor(p, variance)
    fprintf("Testing for:\n")
    fprintf("p = ")
    disp(p)
    fprintf("variance = ")
    disp(variance)

    n = p*2;
    matrix = getMatrix(p, variance);
    vector = randn(2*p, 1).*100;

    tic
    for i = 1:1
        myResult = linsolveUDUT(matrix, vector);
    end
    myTime = toc;

    tic
    for i = 1:1
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
    disp(errors(1:min(5,n),:))

    fprintf("My time (over 1 repetition): ")
    disp(myTime)
    fprintf("BuiltIn function time (over 1 repetition): ")
    disp(matlabTime)

    imagesc(matrix);
    colorbar;
    grid on;
end