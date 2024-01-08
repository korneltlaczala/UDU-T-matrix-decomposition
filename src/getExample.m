function [matrix] = getExample(index)

    switch index
        case 1
            matrix = [6, 2, 1, 3;
                      2, 5, 2, 1;
                      1, 2, 4, 2;
                      3, 1, 2, 7];
        case 2
            matrix = [7, 1, 2, 4;
                      1, 8, 3, 1;
                      2, 3, 5, 2;
                      4, 1, 2, 6];
        case 3
            matrix = [8, 3, 1, 2;
                      3, 9, 4, 1;
                      1, 4, 6, 2;
                      2, 1, 2, 7];
        case 4
            matrix = [9, 2, 1, 3;
                      2, 10, 2, 1;
                      1, 2, 7, 2;
                      3, 1, 2, 8];
        case 5
            matrix = [10, 1, 2, 4;
                      1, 11, 3, 1;
                      2, 3, 8, 2;
                      4, 1, 2, 9];
        case 6
            matrix = [12, 3, 1, 2;
                      3, 13, 4, 1;
                      1, 4, 10, 2;
                      2, 1, 2, 11];
        case 7
            matrix = [14, 2, 1, 3;
                      2, 15, 2, 1;
                      1, 2, 12, 2;
                      3, 1, 2, 13];
        case 8
            matrix = [16, 1, 2, 4;
                      1, 17, 3, 1;
                      2, 3, 14, 2;
                      4, 1, 2, 15];
        case 9
            matrix = [18, 3, 1, 2;
                      3, 19, 4, 1;
                      1, 4, 16, 2;
                      2, 1, 2, 17];
        case 10
            matrix = [20, 2, 1, 3;
                      2, 21, 2, 1;
                      1, 2, 18, 2;
                      3, 1, 2, 19];
        otherwise
            error('Invalid index. Choose a value between 1 and 10.');
    end
end
