function X = dcDFT(x)
    N = length(x);
    X = zeros(1, N);
    x0 = x(1:2:N);
    x1 = x(2:2:N);
    X0 = DFTsum(x0);
    X1 = DFTsum(x1);
    
    W = exp(-1j*2*pi*(0:N/2-1)/N);

    X(1:N/2) = X0 + W.*X1;
    X(N/2+1:N) = X0 - W.*X1;
end