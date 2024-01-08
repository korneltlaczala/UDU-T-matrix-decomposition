function [p, variance] = getTestCase(index)

    switch index
        case 1
            p = 2;
            variance = 1;
        case 2
            p = 2;
            variance = 10000;
        case 3
            p = 2;
            variance = 0.0001;
        case 4
            p = 1;
            variance = 1;
        case 5
            p = 10;
            variance = 1;
        case 6
            p = 1000;
            variance = 1;
        case 7
            p = 255;
            variance = 1000;
    end