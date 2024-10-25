function x = IDFTsum(X)
    N = length(X);
    x = zeros(1, N);
    for n = 0:N-1
        for k = 0:N-1
            x(n+1)=x(n+1)+X(k+1)*exp(1j*2*pi*k*n/N);
        end
    end

end