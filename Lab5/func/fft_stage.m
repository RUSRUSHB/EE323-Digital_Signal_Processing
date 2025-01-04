function X=fft_stage(x)
    N = length(x);
    Nh = N/2;
    X = zeros(1, N);
    if N==2
        X = [x(1)+x(2), x(1)-x(2)];
        return
    end
    X0 = fft_stage(x(1:2:end));
    X1 = fft_stage(x(2:2:end));

    W = exp(-1j*2*pi*(0:(Nh-1))/N);

    X(1:Nh) = X0 + W.*X1;
    X(Nh+1:end) = X0 - W.*X1;
end