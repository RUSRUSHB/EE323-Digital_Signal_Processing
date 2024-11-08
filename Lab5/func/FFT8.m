function X = FFT8(x)
    X0 = FFT4(x(1:2:8));
    X1 = FFT4(x(2:2:8));

    W = exp(-1j*2*pi*(0:3)/8);

    X(1:4) = X0 + W.*X1;
    X(5:8) = X0 - W.*X1;
    disp(8)
end

function X = FFT2(x)
    X(1) = x(1)+x(2);
    X(2) = x(1)-x(2);
end

function X = FFT4(x)
    X0 = FFT2(x(1:2:4));
    X1 = FFT2(x(2:2:4));

    W = exp(-1j*2*pi*(0:1)/4);

    X(1:2) = X0 + W.*X1;
    X(3:4) = X0 - W.*X1;
    disp(4)
end

